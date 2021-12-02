function show(id){
    window.location.href="${pageContext.request.contextPath}/product?method=findAllProducts&cid="+id;
    console.log("牛")
};