<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec"
  uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="/WEB-INF/views/header.jsp"%>
  <body class="goto-here">
  <%@include file="/WEB-INF/views/navbar.jsp"%>
    <section id="home-section" class="hero">
      <div class="home-slider owl-carousel">
        <div class="slider-item" style="background-image: url(<c:url value='/resources/images/bg_1.jpg' />);">
          <div class="overlay"></div>
          <div class="container">
            <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

              <div class="col-md-12 ftco-animate text-center">
                <h1 class="mb-2">We serve Fresh Vegetables &amp; Fruits</h1>
                <h2 class="subheading mb-4">We deliver organic vegetables &amp; fruits</h2>
              </div>

            </div>
          </div>
        </div>

        <div class="slider-item" style="background-image: url(<c:url value='/resources/images/bg_2.jpg' />);">
          <div class="overlay"></div>
          <div class="container">
            <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

              <div class="col-sm-12 ftco-animate text-center">
                <h1 class="mb-2">100% Fresh &amp; Organic Foods</h1>
                <h2 class="subheading mb-4">We deliver organic vegetables &amp; fruits</h2>
              </div>

            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
        <div class="row no-gutters ftco-services">
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
                <span class="flaticon-shipped"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Fast Shipping</h3>
                <span>Experience Best Service</span>
              </div>
            </div>      
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
                <span class="flaticon-diet"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Always Fresh</h3>
                <span>Product well package</span>
              </div>
            </div>    
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
                <span class="flaticon-award"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Superior Quality</h3>
                <span>Quality Products</span>
              </div>
            </div>      
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
                <span class="flaticon-customer-service"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Support</h3>
                <span>24/7 Support</span>
              </div>
            </div>      
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-category ftco-no-pt">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <div class="row">
              <div class="col-md-6 order-md-last align-items-stretch d-flex">
                <div class="category-wrap-2 ftco-animate img align-self-stretch d-flex" style="background-image: url(<c:url value='/resources/images/category.jpg' />);">
                  <div class="text text-center">
                    <h2>Our Products</h2>
                    <p>Protect the health of every home</p>
                    <p><a href="/departmental/products" class="btn btn-primary">Shop now</a></p>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url(<c:url value='/resources/images/category-1.jpg' />);">
                  <div class="text px-3 py-1">
                    <h2 class="mb-0">Fruits</h2>
                  </div>
                </div>
                <div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(<c:url value='/resources/images/category-2.jpg' />);">
                  <div class="text px-3 py-1">
                    <h2 class="mb-0">Vegetables</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url(<c:url value='/resources/images/category-3.jpg' />);">
              <div class="text px-3 py-1">
                <h2 class="mb-0">Juices</h2>
              </div>    
            </div>
            <div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(<c:url value='/resources/images/category-4.jpg' />);">
              <div class="text px-3 py-1">
                <h2 class="mb-0">Dried</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section img" style="background-image: url(<c:url value='/resources/images/bg_3.jpg' />);">
      <div class="container">
        <div class="row justify-content-end">
          <div class="col-md-6 heading-section ftco-animate deal-of-the-day ftco-animate">
            <span class="subheading">Tejumal Departmental Store</span>
            <h2 class="mb-4">Why Chose Us?</h2>
            <p>Your Request is Our Command</p>
            <h3>Best Quality</h3>
            <h3>Best Service</h3>
            <h3>Best Price</h3>
          </div>
        </div>      
      </div>
    </section>

    <section class="ftco-section testimony-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <span class="subheading">Testimony</span>
            <h2 class="mb-4">Our satisfied customer says</h2>
            <p>We serve one of the top grocery stores in the country.</p>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(<c:url value='/resources/images/person_1.jpg' />)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text text-center">
                    <p class="mb-5 pl-4 line">One of the best service I have seen.</p>
                    <p class="name">Customer 1</p>
                    <span class="position">Title 1</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(<c:url value='/resources/images/person_1.jpg' />)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text text-center">
                    <p class="mb-5 pl-4 line">One of the best service I have seen.</p>
                    <p class="name">Customer 2</p>
                    <span class="position">Title 2</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(<c:url value='/resources/images/person_1.jpg' />)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text text-center">
                    <p class="mb-5 pl-4 line">One of the best service I have seen.</p>
                    <p class="name">Customer 3</p>
                    <span class="position">Title 3</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(<c:url value='/resources/images/person_1.jpg' />)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text text-center">
                    <p class="mb-5 pl-4 line">One of the best service I have seen.</p>
                    <p class="name">Customer 4</p>
                    <span class="position">Title 4</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(<c:url value='/resources/images/person_1.jpg' />)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text text-center">
                    <p class="mb-5 pl-4 line">One of the best service I have seen.</p>
                    <p class="name">Customer 5</p>
                    <span class="position">Title 5</span>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </section>

    <hr>

    <section class="ftco-section ftco-partner">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">Our Partners</h2>
          </div>
        </div>
      <div class="container">
        <div class="row">
          <div class="col-sm ftco-animate">
            <a href="#" class="partner"><img src="<c:url value='/resources/images/partner-1.png' />" class="img-fluid" alt="Colorlib Template"></a>
          </div>
          <div class="col-sm ftco-animate">
            <a href="#" class="partner"><img src="<c:url value='/resources/images/partner-2.png' />" class="img-fluid" alt="Colorlib Template"></a>
          </div>
          <div class="col-sm ftco-animate">
            <a href="#" class="partner"><img src="<c:url value='/resources/images/partner-3.png' />" class="img-fluid" alt="Colorlib Template"></a>
          </div>
          <div class="col-sm ftco-animate">
            <a href="#" class="partner"><img src="<c:url value='/resources/images/partner-4.png' />" class="img-fluid" alt="Colorlib Template"></a>
          </div>
          <div class="col-sm ftco-animate">
            <a href="#" class="partner"><img src="<c:url value='/resources/images/partner-5.png' />" class="img-fluid" alt="Colorlib Template"></a>
          </div>
        </div>
      </div>
    </section>
    
    <%@include file='/WEB-INF/views/footer.jsp' %>
    
  </body>
</html>