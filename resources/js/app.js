/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

// require('./bootstrap');

// import Vue from 'vue/dist/vue.common.js'
// // window.Vue = require('vue').default;

import Vue from 'vue'
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import 'bootstrap-vue/dist/bootstrap-vue-icons.min.css'
// Import Bootstrap an BootstrapVue CSS files (order is important)
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

// Make BootstrapVue available throughout your project
Vue.use(BootstrapVue)
// Optionally install the BootstrapVue icon components plugin
Vue.use(IconsPlugin)

window.axios = require('axios');

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('vue-header', require('./layouts/VueHeader.vue').default);
Vue.component('vue-footer', require('./layouts/VueFooter.vue').default);
Vue.component('vue-navbar', require('./layouts/VueNavbar.vue').default);
Vue.component('vue-main', require('./layouts/VueMain.vue').default);
Vue.component('vue-nav', require('./layouts/VueNav.vue').default);

Vue.component('product-detail', require('./pages/ProductDetail.vue').default);
Vue.component('my-cart', require('./pages/MyCart.vue').default);
Vue.component('order-history', require('./pages/OrderHistory.vue').default);
Vue.component('order', require('./pages/Order.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
Vue.filter('price', function (value) {
    if(value){
        let price = Number(value);
        return (price).toLocaleString('en-MY', {
            style: 'currency',
            currency: 'MYR',
        });
    }
})

const app = new Vue({
    el: '#app',
});
