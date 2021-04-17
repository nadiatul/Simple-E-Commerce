export function getProduct(productId){
    return axios.get('/api/product/' + productId);
}
