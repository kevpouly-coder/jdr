-- Règles Supabase pour différencier Maîtres du Jeu et Joueurs.
-- À exécuter dans la console SQL Supabase après avoir créé les tables nécessaires.

-- Exemple de table partagée avec rôles différents
create table if not exists public.journal (
  id uuid primary key default gen_random_uuid(),
  owner uuid references auth.users not null,
  title text not null,
  content text,
  inserted_at timestamp with time zone default now()
);

alter table public.journal enable row level security;

-- Politique lecture : les joueurs et MJ peuvent lire tout le contenu
create policy "journal lecture" on public.journal
  for select
  using (
    coalesce(auth.jwt() -> 'user_metadata' ->> 'role', '') in ('joueur', 'mj')
  );

-- Politique écriture : seuls les MJ peuvent créer / modifier / supprimer
create policy "journal ecriture mj" on public.journal
  for all
  using (
    (auth.jwt() -> 'user_metadata' ->> 'role') = 'mj'
  )
  with check (
    (auth.jwt() -> 'user_metadata' ->> 'role') = 'mj'
  );

-- Optionnel : restreindre les joueurs à leurs propres enregistrements sur une table dédiée
create policy "fiche joueur" on public.fiches
  for all
  using (
    (auth.jwt() ->> 'sub')::uuid = owner
  )
  with check (
    (auth.jwt() -> 'user_metadata' ->> 'role') = 'joueur'
    and (auth.jwt() ->> 'sub')::uuid = owner
  );
