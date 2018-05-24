//商品物件
function Prodcut(productId,productTitle,productCount,productPrice){
  this.productId = productId;
  this.productTitle = productTitle;
  this.productCount = productCount;
  this.productPrice = productPrice;
  this.amount = 0;
}
Prodcut.prototype = {
  showItem:function(){
    this.caculateAmount();
    var $li = $("<li></li>");
    $li.html("物品 : "+this.productTitle +" | 價格 : "+this.productPrice+" | 數量:"+this.productCount+" | 小計="+this.amount+"元");
    $li.appendTo('.buy-list');
  },
  checkItemt:function(){
      // 檢查是否有已加入購物車  .....懶得做惹
  },
  caculateAmount:function(){
    var price = parseInt(this.productPrice.substr(1)),
        count = parseInt(this.productCount);
    this.amount = price*count;
  }
}
//購物車物件
function ShoppingChart(){
  this.productArr = [];
  this.totalAmount = 0;
}
ShoppingChart.prototype ={
  pushProduct:function(amount){
    this.productArr.push(amount);
  },
  caculateTotalAmount : function(){
    console.log(' caculateTotalAmount'+this.productArr);
    for (var i in this.productArr){
       this.totalAmount += this.productArr[i];
    }
  }
}
//觸發事件
function addToChart(){
  console.log('addToChart');
  var shoppingChart = new ShoppingChart();
  $(".product-list").find("input[type=checkbox]:checked").each(function(){
        var $this = $(this),
            productId = $this.val(),
            productCount = $this.siblings(".product-count").children('input').val(),
            productTitle = $this.siblings(".product-title").text(),
            productPrice = $this.siblings(".product-price").text();
        //新增商品物件
        var product = new Prodcut(productId,productTitle,productCount,productPrice);
        product.showItem();
        shoppingChart.pushProduct(product.amount);
    });
   shoppingChart.caculateTotalAmount();
   $("#total").html("總計 = "+shoppingChart.totalAmount+"元");
}
$(function(){
   $("#add").on("click",addToChart);
});
