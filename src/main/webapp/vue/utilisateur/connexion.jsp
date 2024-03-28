<!-- <div class="flex min-h-full flex-col justify-center px-6 py-12 lg:px-8">
  <div class="sm:mx-auto sm:w-full sm:max-w-sm">
    <img class="mx-auto h-10 w-auto" src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600" alt="Your Company">
    <h2 class="mt-10 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900">Connecte toi à ton profil</h2>
  </div>

  <div class="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
    <form class="bg-white shadow-md rounded px-7 pt-4 pb-7 mb-3" method="POST">
      <div>
        <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Email:</label>
        <div class="mt-2">
          <input id="mail" name="mail" type="email" autocomplete="email" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
        </div>
      </div>

      <div>
        <div class="flex items-center justify-between">
          <label for="password" class="block text-sm font-medium leading-6 text-gray-900">Password</label>
        </div>
        <div class="mt-2">
          <input id="password" name="mdp" type="password" autocomplete="current-password" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
        </div>
      </div>

      <div class="mt-2">
        <button type="submit" class="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Sign in</button>
      </div>
    </form>

    <p class="mt-10 text-center text-sm text-gray-500">
      Pas de compte?
      <a href="inscription" class="font-semibold leading-6 text-indigo-600 hover:text-indigo-500">Inscrivez-vous ici</a>
    </p>
  </div>
</div> -->

<section class="h-100">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-6">
                <div class="card card-registration my-4">
                    <div class="card-body p-md-5 text-black">
                        <h3 class="mb-5 text-uppercase">Connexion</h3>
                        <form method="post">
                          
                           <div class="form-outline mb-4">
                                <input type="text" id="form3Example1n1" name="mail" class="form-control form-control-lg" />
                                <label class="form-label" for="form3Example1n1">Email</label>
                            </div>
                            <div class="form-outline mb-4">
                                <div class="form-outline">
                                    <input type="password" id="form3Example1m1" name="mdp" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example1m1">Mot de passe:</label>
                                </div>
                            </div>
                           
                            <div class="d-flex justify-content-end pt-3">
                                <button type="button" class="btn btn-light btn-lg">Réinitialiser</button>
                                <button type="submit" class="btn btn-warning btn-lg ms-2">Se connecter</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</section>
