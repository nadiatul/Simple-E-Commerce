axios({
    method:'get',
    url: 'api/test',
    data: {
        firstName: 'test',
        lastName: 'test'
    }
}).then((response)=> {
    console.log(response)
}, (error)=>{
    console.log(error)
})