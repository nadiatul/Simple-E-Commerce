/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

import Vue from 'vue/dist/vue.common.js'
// window.Vue = require('vue').default;

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('header-component', require('./layouts/HeaderComponent.vue').default);
Vue.component('footer-component', require('./layouts/FooterComponent.vue').default);
Vue.component('navbar-component', require('./layouts/NavbarComponent.vue').default);
Vue.component('main-component', require('./layouts/MainComponent.vue').default);
Vue.component('nav-component', require('./layouts/NavComponent.vue').default);

Vue.component('product-details-component', require('./pages/ProductDetailsComponent.vue').default);
Vue.component('add-to-carts-component', require('./pages/AddToCartsComponent.vue').default);
Vue.component('order-history-component', require('./pages/OrderHistoryComponent.vue').default);
Vue.component('place-order-component', require('./pages/PlaceOrderComponent.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app',
});
