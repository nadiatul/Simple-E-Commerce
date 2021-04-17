export  function getCart(id) {
    return axios.get('api/cart/' + id)
}
export  function getMembershipDiscount(id) {
    return axios.get('/api/get-membership-discount/'+ id)
}
export  function deleteCart(id) {
    return axios.delete('api/cart/'+id)
}
