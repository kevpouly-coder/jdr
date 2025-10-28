document.addEventListener("DOMContentLoaded", async () => {
  if (!window.authHelpers) {
    console.error("authHelpers n'est pas disponible");
    return;
  }

  const { supabaseClient, redirectForRole, getSession } = window.authHelpers;

  const session = await getSession();
  if (session) {
    const role = session.user?.user_metadata?.role || null;
    window.location.href = redirectForRole(role);
    return;
  }

  const loginForm = document.querySelector("#login-form");
  const signupForm = document.querySelector("#signup-form");
  const messageBox = document.querySelector("#messages");

  function showMessage(text, variant = "info") {
    if (!messageBox) return;
    messageBox.textContent = text;
    messageBox.dataset.variant = variant;
  }

  if (loginForm) {
    loginForm.addEventListener("submit", async (event) => {
      event.preventDefault();
      showMessage("Connexion…", "info");

      const email = loginForm.querySelector("input[name=email]").value.trim();
      const password = loginForm.querySelector("input[name=password]").value;

      const { data, error } = await supabaseClient.auth.signInWithPassword({ email, password });

      if (error) {
        showMessage(error.message, "error");
        return;
      }

      const role = data.user?.user_metadata?.role || null;
      window.location.href = redirectForRole(role);
    });
  }

  if (signupForm) {
    signupForm.addEventListener("submit", async (event) => {
      event.preventDefault();
      showMessage("Création du compte…", "info");

      const email = signupForm.querySelector("input[name=email]").value.trim();
      const password = signupForm.querySelector("input[name=password]").value;
      const role = signupForm.querySelector("select[name=role]").value;

      const { data, error } = await supabaseClient.auth.signUp({
        email,
        password,
        options: {
          emailRedirectTo: `${window.location.origin}/login.html`,
          data: { role }
        }
      });

      if (error) {
        showMessage(error.message, "error");
        return;
      }

      if (data.session) {
        const userRole = data.user?.user_metadata?.role || role;
        window.location.href = redirectForRole(userRole);
      } else {
        showMessage("Compte créé ! Vérifiez vos emails pour confirmer votre adresse.", "success");
      }
    });
  }
});
