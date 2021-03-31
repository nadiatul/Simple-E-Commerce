<template>
  <nav class="bg-gray-800">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex items-center justify-between h-16">
        <div class="flex items-center">
          <a class="flex-shrink-0" href="/">
            <img class="h-8 w-8" src="https://tailwindui.com/img/logos/workflow-mark-indigo-500.svg" alt="Workflow">
          </a>
          <div class="hidden md:block">
            <div class="ml-10 flex items-baseline space-x-4">
              <a href="/" class="bg-gray-900 text-white px-3 py-2 rounded-md text-sm font-medium">Dashboard</a>
            </div>
          </div>
        </div>
        <div class="hidden md:block">
          <div class="ml-4 flex items-center md:ml-6">           
            <button @click="addToCartDetails()" class="bg-gray-800 p-1 rounded-full text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white">
              <span class="sr-only">Add To Cart</span>
            <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
            </svg>
            </button>
              <span class="cart-badge">
                <div class="cart-badge-number px-1.5 py-0.5 border-2 border-white rounded-full text-xs font-semibold leading-4 bg-red-500 text-white">
                  6
                </div>
            </span>

            <!-- Profile dropdown -->
            <div class="ml-3 relative">
              <div>
                <button @click="clickProfile()" type="button" class="max-w-xs bg-gray-800 rounded-full flex items-center text-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white" id="user-menu" aria-expanded="false" aria-haspopup="true">
                  <span class="sr-only">Open user menu</span>
                  <img class="h-8 w-8 rounded-full" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
                </button>
                <p class="text-white">{{ username.name }}</p>
              </div>
              <div :class="hideProfile ? 'invisible' : ''" class="origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg py-1 bg-white ring-1 ring-black ring-opacity-5 focus:outline-none" role="menu" aria-orientation="vertical" aria-labelledby="user-menu">
                <a href="/add-to-carts" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">My Cart</a>
                <a href="/order-history" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">My Order History</a>
                <a href="#" @click="logout()" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">Sign out</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </nav>
</template>

<script>

export default({
   name: 'NavComponent',
       data () {
        return {
          hideProfile: true
        } 
      },
      props:[
        'username'
      ],
      methods: {
        clickProfile() {
            this.hideProfile = this.hideProfile ? false: true;
        },
        logout(){
            axios.post("logout").then(response => { 
            window.location.href = "/home"
          })
          .catch(error => {
            console.log(error);
          });
        },
        addToCartDetails(){
            window.location = "/add-to-carts";
        }
      }
})
</script>
<style>

.cart-badge {

right:10px;
}
.cart-badge-number {
  position: absolute;
  right: 141px;
  top: 35px;
}


</style>