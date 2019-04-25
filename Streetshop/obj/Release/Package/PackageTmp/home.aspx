<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Streetshop.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="Picture/pic1.jpg" alt="First slide">
            &nbsp;</div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="Picture/pic2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="Picture/pic3.jpg" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
    </div>
    <div class="row">
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="Picture/pics1.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a> Adidas by BAPE®</a>
                </h4>
                <p class="card-text">adidas จับมือ BAPE เผยคอลเลคชั่นต้อนรับ Super Bowl 2019</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="Picture/pics2.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a>Adidas Ultraboost x Game of Thrones</a>
                </h4>
                <p class="card-text">ขายแล้ววันนี้ adidas Ultraboost x Game of Thrones รองเท้าลิมิเต็ดอิดิชั่น 6 รุ่น</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="Picture/pics3.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a >FREITAG 5 รุ่นใหม่นวัตกรรมใหม่ « TARP ON PET</a>
                </h4>
                <p class="card-text">ผ้าใบรถบรรทุกที่คุ้นเคยบวกกับพลาสติก PET ของขวดน้ำรีไซเคิล</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="Picture/pics4.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a >FREITAG F303 HAZZARD</a>
                </h4>
                <p class="card-text">กระเป๋าสะพาย freitag ที่ดีไซน์มาให้ใช้งานได้สะดวก หากเดินอยู่ต้องการหยิบของก็สามารถถอดแขนออกข้างหนึ่งแล้วสวิงมาดานหน้าก็จะสามารถเปิดใช้งานช่องกระเป๋าได้สะดวก</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Five</a>
                </h4>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Six</a>
                </h4>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>
        </div>
</asp:Content>
