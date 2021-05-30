<template>
<div>
  <b-navbar toggleable="lg" type="dark" variant="info">
    <b-navbar-brand href="/">Home</b-navbar-brand>
    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
    <b-collapse id="nav-collapse" is-nav>
      <b-navbar-nav>
      </b-navbar-nav>
      <b-navbar-nav class="ml-auto">
        <b-nav-form class="d-none">
          <b-form-input size="sm" class="mr-sm-2" placeholder="Search"></b-form-input>
          <b-button size="sm" class="my-2 my-sm-0" type="submit">Search</b-button>
        </b-nav-form>

        <b-nav-item-dropdown text="Lang" class="d-none" right>
          <b-dropdown-item href="#">EN</b-dropdown-item>
          <b-dropdown-item href="#">MY</b-dropdown-item>
        </b-nav-item-dropdown>
        <b-nav-form class="">
            <b-button class="bg-info rounded-circle">
                <b-icon icon="bell"></b-icon>
            </b-button>
        </b-nav-form>

        <b-nav-item-dropdown right>
          <template #button-content>
            <em>{{ username.name }}</em>
          </template>
          <b-dropdown-item href="#">Profile</b-dropdown-item>
          <b-dropdown-item href="/add-to-carts">My Cart</b-dropdown-item>
          <b-dropdown-item href="/order-history">My Order History</b-dropdown-item>
          <b-dropdown-item @click="logout()" href="#">Sign Out</b-dropdown-item>
        </b-nav-item-dropdown>
      </b-navbar-nav>
    </b-collapse>
  </b-navbar>
</div>

</template>

<script>

export default({
   name: 'VueNav',
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
        logout() {
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
