<template lang="">
  <header class="text-white bg-gray-900 bg-opacity-60 fixed glass">
    <div
      class="
        container
        mx-auto
        flex flex-wrap
        p-3
        flex-col
        sm:flex-row
        md:flex-row
        items-center
      "
    >
      <div class="dropdown text-xs">
        <a
          id="parent"
          tabindex="0"
          class="
            flex
            items-center
            mb-4
            sm:mb-0
            md:mb-0
            mx-44
            sm:mx-24
            md:mx-28
            lg:mx-40
            xl:mx-52
            2xl:mx-64
            cursor-pointer
          "
        >
          <img class="w-6" src="../assets/images/RacssoftMockup.webp" alt="" />
        </a>
        <ul
          id="submenu"
          tabindex="0"
          class="
            mt-3
            p-2
            menu
            dropdown-content
            w-52
            text-white
            bg-gray-900 bg-opacity-80
            ml-0
            2xl:ml-24
          "
        >
          <li>
            <a href="./corporate.html"
              ><img
                class="w-3 mr-3"
                src="../assets/images/RacswhiteIcon.webp"
                alt=""
              />
              Racssoft</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fas fa-chalkboard-teacher mr-3"></i>RacsIT</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fas fa-table mr-3"></i>Rac's Trading</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fas fa-seedling mr-3"></i>Thungaa</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fab fa-opencart mr-3"></i>RacsCart</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fab fa-pagelines mr-3"></i>RacsAgro</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fas fa-graduation-cap mr-3"></i>RacsSchool</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fas fa-plane-departure mr-3"></i>FlyRacs</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fas fa-laptop-house mr-3"></i>Kirod</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fab fa-battle-net mr-3"></i>RacsNet</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fas fa-globe mr-3"></i>RacsFoundation</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fas fa-layer-group mr-3"></i>Ghor.Design</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fas fa-landmark mr-3"></i>FrndzClub</a
            >
          </li>
          <li>
            <a href="./corporate.html"
              ><i class="fas fa-car-side mr-3"></i>Speedzz</a
            >
          </li>
        </ul>
      </div>
      <nav class="nav">
        <a
          class="
            mr-32
            sm:mr-5
            md:mr-16
            lg:mr-20
            2xl:mr-40
            font-bold
            text-xs
            hover:text-gray-200
          "
          href="./store.html"
          >Store</a
        >
        <a
          class="
            mr-32
            sm:mr-5
            md:mr-16
            lg:mr-20
            2xl:mr-40
            font-bold
            text-xs
            hover:text-gray-200
          "
          href="./support.html"
          >Support</a
        >
        <a class="font-bold text-xs hover:text-gray-200" href="./corporate.html"
          >Corporate</a
        >
      </nav>
      <a class="hover:text-gray-200 text-white login" href="#my-modal">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          class="h-4 w-4"
          fill="none"
          viewBox="0 0 24 24"
          stroke="currentColor"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            stroke-width="2"
            d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
          />
        </svg>
      </a>
      <div id="my-modal" class="modal w-56">
        <div class="modal-box">
          <form action="">
            <p class="text-right text-gray-800">
              <a href="#modal" class=""><i class="fas fa-times"></i></a>
            </p>
            <div class="form-control text-black">
              <label class="label">
                <span class="label-text text-xs">Username</span>
              </label>
              <input
                type="text"
                placeholder="username"
                class="input w-48 h-6 input-bordered"
              />
              <label class="label">
                <span class="label-text text-xs">Password</span>
              </label>
              <input
                type="password"
                placeholder="password"
                class="input w-48 h-6 input-bordered"
              />
              <p class="text-xs font-bold text-right mt-1.5 text-gray-800">
                <a href="">Forget Password?</a>
              </p>
            </div>
            <div class="modal-action">
              <a
                href="#modal"
                class="
                  bg-white
                  hover:bg-gray-100
                  text-gray-800
                  font-semibold
                  mt-3
                  mb-1.5
                  py-1
                  px-4
                  border border-gray-400
                  rounded
                  shadow
                  text-xs
                "
                >Login</a
              >
            </div>
            <p class="text-xs mt-1 text-gray-800">
              New Member? <a href="#my-modalR" class="font-bold">Register</a>
            </p>
          </form>
        </div>
      </div>
      <!-- Register page -->
      <div id="my-modalR" class="modal w-96 modal-r">
        <div class="modal-box modal-box-r">
          <form action="">
            <p class="text-right text-gray-800">
              <a href="#modal" class=""><i class="fas fa-times"></i></a>
            </p>
            <div class="form-control text-black">
              <label class="label">
                <span class="label-text text-xs">Full Name</span>
              </label>
              <input
                type="text"
                placeholder="full name"
                class="input h-6 input-bordered"
              />
              <label class="label">
                <span class="label-text text-xs">Email</span>
              </label>
              <input
                type="email"
                placeholder="email"
                class="input h-6 input-bordered"
              />
              <label class="label">
                <span class="label-text text-xs">Phone</span>
              </label>
              <input
                type="text"
                placeholder="phone"
                class="input h-6 input-bordered"
              />
              <label class="label">
                <span class="label-text text-xs">Username</span>
              </label>
              <input
                type="text"
                placeholder="username"
                class="input h-6 input-bordered"
              />
              <label class="label">
                <span class="label-text text-xs">Password</span>
              </label>
              <input
                type="password"
                placeholder="password"
                class="input h-6 input-bordered"
              />
              <label class="label">
                <span class="label-text text-xs">Confirm Password</span>
              </label>
              <input
                type="password"
                placeholder="password"
                class="input h-6 input-bordered"
              />
            </div>
            <div class="modal-action">
              <a
                href="#modal"
                class="
                  bg-white
                  hover:bg-gray-100
                  text-gray-800
                  font-semibold
                  mt-3
                  mb-1.5
                  py-1
                  px-4
                  border border-gray-400
                  rounded
                  shadow
                  text-xs
                "
                >Register</a
              >
            </div>
            <p class="text-xs font-semibold text-gray-800">
              <a href="#my-modal">Login</a>
            </p>
          </form>
        </div>
      </div>
      <!-- Register End -->
    </div>
  </header>
</template>
<script>
export default {};
</script>
<style lang=""></style>
