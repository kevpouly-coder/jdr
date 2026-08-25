(function () {
  if (!window.supabase) {
    console.error("Le script Supabase n'est pas chargé. Ajoutez https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2 dans la page.");
    return;
  }

  const config = window.__APP_CONFIG__ || {};
  const url = config.SUPABASE_URL;
  const anonKey = config.SUPABASE_ANON_KEY;

  if (!url || !anonKey || url.includes("YOUR-PROJECT")) {
    console.warn("Supabase URL / clé anonymes non définies. Mettez à jour assets/js/config.js.");
  }

  const supabaseClient = window.supabase.createClient(url, anonKey, {
    auth: {
      persistSession: true,
      autoRefreshToken: true,
      detectSessionInUrl: true
    }
  });

  const ROLE_PATH = {
    mj: "/admin/index.html",
    joueur: "/personnages.html"
  };

  async function getSession() {
    const { data, error } = await supabaseClient.auth.getSession();
    if (error) {
      console.error("Erreur lors de la récupération de session Supabase", error);
      return null;
    }
    return data.session;
  }

  function getRoleFromSession(session) {
    return session?.user?.user_metadata?.role || null;
  }

  function redirectForRole(role) {
    return ROLE_PATH[role] || "/";
  }

  async function requireAuth(options = {}) {
    const { redirectTo = "/login.html", allowedRoles = [] } = options;
    const session = await getSession();

    if (!session) {
      if (redirectTo) window.location.href = redirectTo;
      return null;
    }

    const role = getRoleFromSession(session);
    if (Array.isArray(allowedRoles) && allowedRoles.length > 0 && !allowedRoles.includes(role)) {
      const target = options.fallback || "/login.html?unauthorized=1";
      window.location.href = target;
      return null;
    }

    return session;
  }

  async function signOut(options = {}) {
    const { redirectTo = "/login.html" } = options;
    await supabaseClient.auth.signOut();
    if (redirectTo) window.location.href = redirectTo;
  }

  window.authHelpers = Object.assign(window.authHelpers || {}, {
    supabaseClient,
    getSession,
    requireAuth,
    redirectForRole,
    signOut,
    getRoleFromSession
  });
})();
