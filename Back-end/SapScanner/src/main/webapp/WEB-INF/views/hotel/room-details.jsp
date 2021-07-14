<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header-search.jsp"%>
<!-- Header -->
<!-- ================================
    START ROOM DETAIL BREAD
================================= -->

<form action = "/hotelRoomList.do"> 
<section class="room-detail-bread">
   <div class="full-width-slider carousel-action">
      <div class="full-width-slide-item">
         <img src="images/hotel/img30.jpg" alt="">
      </div>
      <!-- end full-width-slide-item -->
      <div class="full-width-slide-item">
         <img src="images/hotel/img31.jpg" alt="">
      </div>
      <!-- end full-width-slide-item -->
      <div class="full-width-slide-item">
         <img src="images/hotel/img32.jpg" alt="">
      </div>
      <!-- end full-width-slide-item -->
      <div class="full-width-slide-item">
         <img src="images/hotel/img33.jpg" alt="">
      </div>
      <!-- end full-width-slide-item -->
      <div class="full-width-slide-item">
         <img src="images/hotel/img34.jpg" alt="">
      </div>
      <!-- end full-width-slide-item -->
   </div>
   <!-- end full-width-slider -->
</section>

<!-- end room-detail-bread -->
<!-- ================================
    END ROOM DETAIL BREAD
================================= -->

<!-- ================================
    START TOUR DETAIL AREA
================================= -->
<section class="tour-detail-area padding-bottom-90px">
   <div class="single-content-navbar-wrap menu section-bg"
      id="single-content-navbar">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="single-content-nav" id="single-content-nav">
                  <ul>
                     <li><a data-scroll="description" href="#description"
                        class="scroll-link active">설명</a></li>
                     <li><a data-scroll="services" href="#services"
                        class="scroll-link">서비스</a></li>
                     <li><a data-scroll="amenities" href="#amenities"
                        class="scroll-link">시설</a></li>
                     <li><a data-scroll="location-map" href="#location-map"
                        class="scroll-link">지도</a></li>
                     <li><a data-scroll="reviews" href="#reviews"
                        class="scroll-link">후기</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- end single-content-navbar-wrap -->
   <div class="single-content-box">
      <div class="container">
         <div class="row">
            <div class="col-lg-8">
               <div class="single-content-wrap padding-top-60px">
                  <div id="description" class="page-scroll">
                     <div class="single-content-item pb-4">
                        <h3 class="title font-size-26">${hotelOne.hotelName}</h3>
                     </div>   
<!-- 룸 리스트 -->      

<section class="card-area section--padding">
    <div class="container">
        <!-- <div class="row">
            <div class="col-lg-12">
                <div class="filter-wrap margin-bottom-40px">
                    <div class="filter-top d-flex align-items-center justify-content-between">
                    </div>
                </div>end filter-wrap
            </div>end col-lg-12
        </div>end row -->
        <div class="tab-content" id="may-tabContent4">
            <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
                <div class="row">
                    <c:forEach var="roomList" items="${roomList}">
                    <div class="col-lg-12">
                        <div class="card-item card-item-list room-card">
                              <div class="card-img">
                                        <img src="images/img31.jpg" alt="hotel-img"> <!-- 방이미지 넣어야함. -->
                                    </a>
                                </div>
                            
                            <div class="card-body">
                                <div class="card-price pb-2">
                                    <p>
                                        <span class="price__from">From</span>
                                        <span class="price__num">${roomList.roomPrice}</span>
                                    </p>
                                </div>
                                <h3 class="card-title font-size-26">${roomList.roomType}</a></h3>
                           
                                <div class="card-btn">
                                    <a href="hotel-reservation.do" class="theme-btn theme-btn-transparent">예약하기</a>
                                </div>
                            </div>
                        </div><!-- end card-item -->
                    </div><!-- end col-lg-12 -->
              </c:forEach>
                </div><!-- end row -->
          
            </div>
       
        </div>
       
        <div class="row">
            <div class="col-lg-12">
               
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
     
    </div><!-- end container -->
</section><!-- end card-area --> 
    
                  
                     <!-- end single-content-item -->
                     <div class="section-block"></div>
                     <div
                        class="single-content-item padding-top-30px padding-bottom-40px">
                        <h3 class="title font-size-20">설명</h3>
                        <p class="py-3"></p>
                        <p class="pb-4">${hotelOne.hotelInfo}</p>
                        <h3 class="title font-size-15 font-weight-medium pb-3">준수
                           사항</h3>
                        <ul class="list-items">
                           <li><i class="la la-dot-circle mr-2"></i>금연, 파티 금지</li>
                           <li><i class="la la-dot-circle mr-2"></i>체크인: 오후 2시 - 오후
                              10시</li>
                           <li><i class="la la-dot-circle mr-2"></i>체크아웃: 오전 11시</li>
                        </ul>
                     </div>
                     <!-- end single-content-item -->
                     <div class="section-block"></div>
                  </div>
                  <!-- end description -->
                  <div id="services" class="page-scroll">
                     <div
                        class="single-content-item padding-top-40px padding-bottom-40px">
                        <h3 class="title font-size-20">서비스</h3>
                        <div class="row pt-4">
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-check-circle"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">자전거
                                       대여</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-check-circle"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">회의룸</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-check-circle"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">과일 제공</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-check-circle"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">메시지</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-check-circle"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">관광</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-check-circle"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">차대여</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-check-circle"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">피트니스
                                       센터</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-check-circle"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">세탁</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-check-circle"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">나만의
                                       주차 공간</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-check-circle"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">모닝콜</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                        </div>
                        <!-- end row -->
                     </div>
                     <!-- end single-content-item -->
                     <div class="section-block"></div>
                  </div>
                  <!-- end itinerary -->
                  <div id="amenities" class="page-scroll">
                     <div
                        class="single-content-item padding-top-40px padding-bottom-40px">
                        <h3 class="title font-size-20">시설</h3>
                        <div class="row pt-4">
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-couch"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">2인용
                                       소파</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-television"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">40인치TV</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-gear"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">집사
                                       서비스</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-wifi"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">무료
                                       와이파이</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-swimming-pool"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">수영장</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-user"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">24시간
                                       룸 서비스</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-air-freshener"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">에어컨</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-phone"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">호출전화</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-bullhorn"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">드라이기</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-bathtub"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">욕조</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-hand-holding-usd"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">개인보관함</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                           <div class="col-lg-4 responsive-column">
                              <div
                                 class="single-tour-feature d-flex align-items-center mb-3">
                                 <div
                                    class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
                                    <i class="la la-luggage-cart"></i>
                                 </div>
                                 <div class="single-feature-titles">
                                    <h3 class="title font-size-15 font-weight-medium">수하물
                                       보관</h3>
                                 </div>
                              </div>
                              <!-- end single-tour-feature -->
                           </div>
                           <!-- end col-lg-4 -->
                        </div>
                        <!-- end row -->
                     </div>
                     <!-- end single-content-item -->
                     <div class="section-block"></div>
                  </div>
                  <!-- end itinerary -->
            
                  
                  
               
                  <div id="reviews" class="page-scroll">
                     <div
                        class="single-content-item padding-top-40px padding-bottom-40px">
                        <h3 class="title font-size-20">후기</h3>
                        <div class="review-container padding-top-30px">
                           <div class="row align-items-center">
                              <div class="col-lg-4">
                                 <div class="review-summary">
                                    <h2>
                                       4.5<span>/5</span>
                                    </h2>
                                    <p>Excellent</p>
                                    <span>Based on 4 reviews</span>
                                 </div>
                              </div>
                              <!-- end col-lg-4 -->
                              <div class="col-lg-8">
                                 <div class="review-bars">
                                    <div class="row">
                                       <div class="col-lg-6">
                                          <div class="progress-item">
                                             <h3 class="progressbar-title">서비스</h3>
                                             <div
                                                class="progressbar-content line-height-20 d-flex align-items-center justify-content-between">
                                                <div class="progressbar-box flex-shrink-0">
                                                   <div class="progressbar-line" data-percent="70%">
                                                      <div class="progressbar-line-item bar-bg-1"></div>
                                                   </div>
                                                   <!-- End Skill Bar -->
                                                </div>
                                                <div class="bar-percent">4.6</div>
                                             </div>
                                          </div>
                                          <!-- end progress-item -->
                                       </div>
                                       <!-- end col-lg-6 -->
                                       <div class="col-lg-6">
                                          <div class="progress-item">
                                             <h3 class="progressbar-title">위치</h3>
                                             <div
                                                class="progressbar-content line-height-20 d-flex align-items-center justify-content-between">
                                                <div class="progressbar-box flex-shrink-0">
                                                   <div class="progressbar-line" data-percent="55%">
                                                      <div class="progressbar-line-item bar-bg-2"></div>
                                                   </div>
                                                   <!-- End Skill Bar -->
                                                </div>
                                                <div class="bar-percent">4.7</div>
                                             </div>
                                          </div>
                                          <!-- end progress-item -->
                                       </div>
                                       <!-- end col-lg-6 -->
                                       <div class="col-lg-6">
                                          <div class="progress-item">
                                             <h3 class="progressbar-title">가격</h3>
                                             <div
                                                class="progressbar-content line-height-20 d-flex align-items-center justify-content-between">
                                                <div class="progressbar-box flex-shrink-0">
                                                   <div class="progressbar-line" data-percent="40%">
                                                      <div class="progressbar-line-item bar-bg-3"></div>
                                                   </div>
                                                   <!-- End Skill Bar -->
                                                </div>
                                                <div class="bar-percent">2.6</div>
                                             </div>
                                          </div>
                                          <!-- end progress-item -->
                                       </div>
                                       <!-- end col-lg-6 -->
                                       <div class="col-lg-6">
                                          <div class="progress-item">
                                             <h3 class="progressbar-title">청결도</h3>
                                             <div
                                                class="progressbar-content line-height-20 d-flex align-items-center justify-content-between">
                                                <div class="progressbar-box flex-shrink-0">
                                                   <div class="progressbar-line" data-percent="60%">
                                                      <div class="progressbar-line-item bar-bg-4"></div>
                                                   </div>
                                                   <!-- End Skill Bar -->
                                                </div>
                                                <div class="bar-percent">3.6</div>
                                             </div>
                                          </div>
                                          <!-- end progress-item -->
                                       </div>
                                       <!-- end col-lg-6 -->
                                       <div class="col-lg-6">
                                          <div class="progress-item">
                                             <h3 class="progressbar-title">시설</h3>
                                             <div
                                                class="progressbar-content line-height-20 d-flex align-items-center justify-content-between">
                                                <div class="progressbar-box flex-shrink-0">
                                                   <div class="progressbar-line" data-percent="50%">
                                                      <div class="progressbar-line-item bar-bg-5"></div>
                                                   </div>
                                                   <!-- End Skill Bar -->
                                                </div>
                                                <div class="bar-percent">2.6</div>
                                             </div>
                                          </div>
                                          <!-- end progress-item -->
                                       </div>
                                       <!-- end col-lg-6 -->
                                    </div>
                                    <!-- end row -->
                                 </div>
                              </div>
                              <!-- end col-lg-8 -->
                           </div>
                        </div>
                     </div>
                     <!-- end single-content-item -->
                     <div class="section-block"></div>
                  </div>

               
                  <!-- end reviews -->
                  <div class="review-box">
                     <div class="single-content-item padding-top-40px">
                        <div class="comments-list padding-top-50px">
                            <form id="commentListForm" name="commentListForm" method="post">
                           <div class="comment">
                              <div class="comment-avatar">
                                 <img class="avatar__img" alt="" src="images/team8.jpg">
                              </div>
                              <div class="comment-body">
                                 <div class="meta-data">
                                    <h3 class="comment__author">Jenny Doe</h3>
                                    <div class="meta-data-inner d-flex">
                                       <span class="ratings d-flex align-items-center mr-1">
                                          <i class="la la-star"></i> <i class="la la-star"></i> <i
                                          class="la la-star"></i> <i class="la la-star"></i> <i
                                          class="la la-star"></i>
                                       </span>
                                       <p class="comment__date">April 5, 2019</p>
                                    </div>
                                 </div>
                                 <p class="comment-content">Lorem ipsum dolor sit amet,
                                    dolores mandamus moderatius ea ius, sed civibus vivendum
                                    imperdiet ei, amet tritani sea id. Ut veri diceret fierent
                                    mei, qui facilisi suavitate euripidis</p>
                                 <div
                                    class="comment-reply d-flex align-items-center justify-content-between">
                                    <a class="theme-btn" href="#" data-toggle="modal"
                                       data-target="#replayPopupForm"> <span
                                       class="la la-mail-reply mr-1"></span>답글
                                    </a>
                                    <div class="reviews-reaction">
                                       <a href="#" class="comment-like"><i
                                          class="la la-thumbs-up"></i> 13</a> <a href="#"
                                          class="comment-dislike"><i class="la la-thumbs-down"></i>
                                          2</a> <a href="#" class="comment-love"><i
                                          class="la la-heart-o"></i> 5</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- end comments -->

                           <div class="btn-box load-more text-center">
                              <button
                                 class="theme-btn theme-btn-small theme-btn-transparent"
                                 type="button">더보기</button>
                           </div>
                           </form>
                        </div><!-- end comments-list -->
                        
                        
                        <form id ="commentForm" name="commentForm" method="post">
                        <div class="comment-forum padding-top-40px">
                           <div class="form-box">
                              <div class="form-title-wrap">
                                 <h3 class="title">후기작성</h3>
                              </div>
                              <!-- form-title-wrap -->
                              <div class="form-content">
                                 <div class="rate-option p-2">
                                    <div class="row">
                                       <div class="col-lg-4 responsive-column">
                                          <div class="rate-option-item">
                                             <label>서비스</label>
                                             <div class="rate-stars-option">
                                                <input type="checkbox" id="lst1" value="1"> 
                                                <label for="lst1"></label> 
                                                <input type="checkbox" id="lst2" value="2"> 
                                                <label for="lst2"></label> 
                                                <input type="checkbox" id="lst3" value="3"> 
                                                <label for="lst3"></label> 
                                                <input type="checkbox" id="lst4" value="4"> 
                                                <label for="lst4"></label> 
                                                <input type="checkbox" id="lst5" value="5"> 
                                                <label for="lst5"></label>
                                             </div>
                                          </div>
                                       </div>
                                       <!-- col-lg-4 -->
                                       <div class="col-lg-4 responsive-column">
                                          <div class="rate-option-item">
                                             <label>위치</label>
                                             <div class="rate-stars-option">
                                                <input type="checkbox" id="l1" value="1"> 
                                                <label for="l1"></label> 
                                                <input type="checkbox" id="l2" value="2"> 
                                                <label for="l2"></label> 
                                                <input type="checkbox" id="l3" value="3"> 
                                                <label for="l3"></label> 
                                                <input type="checkbox" id="l4" value="4"> 
                                                <label for="l4"></label> 
                                                <input type="checkbox" id="l5" value="5"> 
                                                <label for="l5"></label>
                                             </div>
                                          </div>
                                       </div>
                                       <!-- col-lg-4 -->
                                       <div class="col-lg-4 responsive-column">
                                          <div class="rate-option-item">
                                             <label>가격</label>
                                             <div class="rate-stars-option">
                                                <input type="checkbox" id="vm1" value="1"> 
                                                <label for="vm1"></label> 
                                                <input type="checkbox" id="vm2" value="2"> 
                                                <label for="vm2"></label> 
                                                <input type="checkbox" id="vm3" value="3"> 
                                                <label for="vm3"></label> 
                                                <input type="checkbox" id="vm4" value="4"> 
                                                <label for="vm4"></label> 
                                                <input type="checkbox" id="vm5" value="5"> 
                                                <label for="vm5"></label>
                                             </div>
                                          </div>
                                       </div>
                                       <!-- col-lg-4 -->
                                       <div class="col-lg-4 responsive-column">
                                          <div class="rate-option-item">
                                             <label>청결도</label>
                                             <div class="rate-stars-option">
                                                <input type="checkbox" id="cln1" value="1"> 
                                                <label for="cln1"></label> 
                                                <input type="checkbox" id="cln2" value="2"> <label for="cln2"></label> 
                                                <input type="checkbox" id="cln3" value="3"> <label for="cln3"></label>
                                                <input type="checkbox" id="cln4" value="4"> <label for="cln4"></label> 
                                                <input type="checkbox" id="cln5" value="5"> <label for="cln5"></label>
                                             </div>
                                          </div>
                                       </div>
                                       <!-- col-lg-4 -->
                                       <div class="col-lg-4 responsive-column">
                                          <div class="rate-option-item">
                                             <label>시설</label>
                                             <div class="rate-stars-option">
                                                <input type="checkbox" id="f1" value="1"> 
                                                <label for="f1"></label> 
                                                <input type="checkbox" id="f2" value="2"> 
                                                <label for="f2"></label> 
                                                <input type="checkbox" id="f3" value="3"> 
                                                <label for="f3"></label> 
                                                <input type="checkbox" id="f4" value="4"> 
                                                <label for="f4"></label> 
                                                <input type="checkbox" id="f5" value="5"> 
                                                <label for="f5"></label>
                                             </div>
                                          </div>
                                       </div>
                                       <!-- col-lg-4 -->
                                    </div>
                                    <!-- end row -->
                                 </div> <!-- end rate-option -->
                                 
                                 <div class="contact-form-action">
                                    <form id="commentForm" name="commentForm" method="post">
                                       <%-- <input type="hidden" name="ref_group" value="${hotelOne.hotelIdx}"/> --%>
                                       <div class="row">
                                          <div class="col-lg-6 responsive-column">
                                             <div class="input-box">
                                                <label class="label-text">성함</label>
                                                <div class="form-group">
                                                   <span class="la la-user form-icon"></span> 
                                                   <%-- <input type="hidden" name="userId" value="${dto.writer }"/> --%>
                                                   <input class="form-control" type="text" id="userName" name="userName"
                                                      placeholder="Your name">
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-lg-12">
                                             <div class="input-box">
                                          <%--    <input type="hidden" name="comment_group" value="${tmp.comment_group }" /> --%>
                                                <label class="label-text">메시지</label>
                                                <div class="form-group">
                                                   <span class="la la-pencil form-icon"></span>
                                                   <textarea class="message-control form-control"
                                                      name="message" placeholder="Write message"></textarea>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-lg-12">
                                             <div class="btn-box">
                                                <a href='#' onClick="fn_comment('${result.code }')" class="theme-btn">등록</a>
                                                <!-- <button type="button" class="theme-btn">완료</button> -->
                                             </div>
                                          </div>
                                       </div>
                                        <input type="hidden" id="b_code" name="b_code" value="${result.code }" />        
                                    </form>
                                 </div><!-- end contact-form-action -->
                              </div> <!-- end form-content -->
                           </div> <!-- end form-box -->
                        </div>
                      </form><!-- end comment-forum -->
                      
                      
                     </div>
                     <!-- end single-content-item -->
                  </div>
                  <!-- end review-box -->
               </div>
               <!-- end single-content-wrap -->
            </div>
            <!-- end col-lg-8 -->

            <!--결제창 -->
            <div class="col-lg-4">
               <div class="sidebar single-content-sidebar mb-0">
                  <div class="sidebar-widget single-content-widget">
                     <h3 class="title stroke-shape">예약</h3>
                     <div class="sidebar-widget-item">
                        <div class="contact-form-action">
                           <form action="#">
                              <div class="input-box">
                                 <label class="label-text">체크인</label>
                                 <div class="form-group">
                                    <span class="la la-calendar form-icon"></span> <input
                                       class="date-range form-control" type="text"
                                       name="daterange-single" readonly>
                                 </div>
                              </div>
                              <div class="input-box">
                                 <label class="label-text">체크아웃</label>
                                 <div class="form-group">
                                    <span class="la la-calendar form-icon"></span> <input
                                       class="date-range form-control" type="text"
                                       name="daterange-single" readonly>
                                 </div>
                              </div>
                           
                           </form>         
                        </div>
                     </div>
                     <!-- end sidebar-widget-item -->
                     <div class="sidebar-widget-item">
                        <div
                           class="qty-box mb-2 d-flex align-items-center justify-content-between">
                           <label class="font-size-16">성인 <span>Age 18+</span></label>
                           <div class="qtyBtn d-flex align-items-center">
                              <div class="qtyDec">
                                 <i class="la la-minus"></i>
                              </div>
                              <input type="text" name="qtyInput" value="0">
                              <div class="qtyInc">
                                 <i class="la la-plus"></i>
                              </div>
                           </div>
                        </div>
                        <!-- end qty-box -->
                        <div
                           class="qty-box mb-2 d-flex align-items-center justify-content-between">
                           <label class="font-size-16">어린이 <span>2-12 years
                                 old</span></label>
                           <div class="qtyBtn d-flex align-items-center">
                              <div class="qtyDec">
                                 <i class="la la-minus"></i>
                              </div>
                              <input type="text" name="qtyInput" value="0">
                              <div class="qtyInc">
                                 <i class="la la-plus"></i>
                              </div>
                           </div>
                        </div>
                        <!-- end qty-box -->
                        <div
                           class="qty-box mb-2 d-flex align-items-center justify-content-between">
                           <label class="font-size-16">유아 <span>0-2 years
                                 old</span></label>
                           <div class="qtyBtn d-flex align-items-center">
                              <div class="qtyDec">
                                 <i class="la la-minus"></i>
                              </div>
                              <input type="text" name="qtyInput" value="0">
                              <div class="qtyInc">
                                 <i class="la la-plus"></i>
                              </div>
                           </div>
                        </div>
                        <!-- end qty-box -->
                     </div>
                     <!-- end sidebar-widget-item -->

                     <!--   <div class="sidebar-widget-item py-4">
                                <h3 class="title stroke-shape">Extra Services</h3>
                                <div class="extra-service-wrap">
                                    <form action="#" method="post" class="extraServiceForm" id="extraServiceForm">
                                        <div id="checkboxContainPrice">
                                            <div class="custom-checkbox">
                                                <input type="checkbox" name="cleaning" id="cleaningChb" value="15.00" />
                                                <label for="cleaningChb" class="d-flex justify-content-between align-items-center">Cleaning Fee <span class="text-black font-weight-regular">$15</span></label>
                                            </div>
                                            <div class="custom-checkbox">
                                                <input type="checkbox" name="airport-pickup" id="airportPickupChb" value="20.00" />
                                                <label for="airportPickupChb" class="d-flex justify-content-between align-items-center">Airport pickup <span class="text-black font-weight-regular">$20</span></label>
                                            </div>
                                            <div class="custom-checkbox">
                                                <input type="checkbox" name="breakfast" id="breakfastChb" value="10.00" />
                                                <label for="breakfastChb" class="d-flex justify-content-between align-items-center">Breakfast <span class="text-black font-weight-regular">$10/ per person</span></label>
                                            </div>
                                            <div class="custom-checkbox">
                                                <input type="checkbox" name="parking" id="parkingChb" value="5.00" />
                                                <label for="parkingChb" class="d-flex justify-content-between align-items-center">Parking <span class="text-black font-weight-regular">$5/ per night</span></label>
                                            </div>
                                        </div> -->
                  
                     </form>
                  </div>
               </div>
            
            </div>
            <!-- end sidebar-widget -->
            <div class="sidebar-widget single-content-widget">
               <h3 class="title stroke-shape">Why Book With Us?</h3>
               <div class="sidebar-list">
                  <ul class="list-items">
                     <li><i class="la la-dollar icon-element mr-2"></i>No-hassle
                        best price guarantee</li>
                     <li><i class="la la-microphone icon-element mr-2"></i>Customer
                        care available 24/7</li>
                     <li><i class="la la-thumbs-up icon-element mr-2"></i>Hand-picked
                        Tours & Activities</li>
                     <li><i class="la la-file-text icon-element mr-2"></i>Free
                        Travel Insureance</li>
                  </ul>
               </div>
               <!-- end sidebar-list -->
            </div>
            <!-- end sidebar-widget -->
            <div class="sidebar-widget single-content-widget">
               <h3 class="title stroke-shape">Get a Question?</h3>
               <p class="font-size-14 line-height-24">Do not hesitate to give
                  us a call. We are an expert team and we are happy to talk to you.</p>
               <div class="sidebar-list pt-3">
                  <ul class="list-items">
                     <li><i class="la la-phone icon-element mr-2"></i><a href="#">+
                           61 23 8093 3400</a></li>
                     <li><i class="la la-envelope icon-element mr-2"></i><a
                        href="mailto:info@trizen.com">info@trizen.com</a></li>
                  </ul>
               </div>
               <!-- end sidebar-list -->
            </div>
            <!-- end sidebar-widget -->
         </div>
         <!-- end sidebar -->
      </div>
      <!-- end col-lg-4 -->
   </div>
   <!-- end row -->
   </div>
   <!-- end container -->
   </div>
   <!-- end single-content-box -->
</section>
<!-- end tour-detail-area -->
<!-- ================================
    END TOUR DETAIL AREA
================================= -->

<div class="section-block"></div>

<!-- ================================
    START RELATE TOUR AREA
================================= -->

<!-- ================================
    END RELATE TOUR AREA
================================= -->

<!-- ================================
    START CTA AREA
================================= -->
<section
   class="cta-area subscriber-area section-bg-2 padding-top-60px padding-bottom-60px">
   <div class="container">
      <div class="row align-items-center">
         <div class="col-lg-7">
            <div class="section-heading">
               <p class="sec__desc text-white-50 pb-1">Newsletter sign up</p>
               <h2 class="sec__title font-size-30 text-white">Subscribe to
                  Get Special Offers</h2>
            </div>
            <!-- end section-heading -->
         </div>
         <!-- end col-lg-7 -->
         <div class="col-lg-5">
            <div class="subscriber-box">
               <div class="contact-form-action">
                  <form action="#">
                     <div class="input-box">
                        <label class="label-text text-white">Enter email address</label>
                        <div class="form-group mb-0">
                           <span class="la la-envelope form-icon"></span> <input
                              class="form-control" type="email" name="email"
                              placeholder="Email address">
                           <button class="theme-btn theme-btn-small submit-btn"
                              type="submit">Subscribe</button>
                           <span class="font-size-14 pt-1 text-white-50"><i
                              class="la la-lock mr-1"></i>Don't worry your information is
                              safe with us.</span>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
            <!-- end section-heading -->
         </div>
         <!-- end col-lg-5 -->
      </div>
      <!-- end row -->
   </div>
   <!-- end container -->
</section>
<!-- end cta-area -->
<!-- ================================
    END CTA AREA
================================= -->

<!-- ================================
       START FOOTER AREA
================================= -->
<section
   class="footer-area section-bg padding-top-100px padding-bottom-30px">
   <div class="container">
      <div class="row">
         <div class="col-lg-3 responsive-column">
            <div class="footer-item">
               <div class="footer-logo padding-bottom-30px">
                  <a href="index.html" class="foot__logo"><img
                     src="images/logo.png" alt="logo"></a>
               </div>
               <!-- end logo -->
               <p class="footer__desc">Morbi convallis bibendum urna ut
                  viverra. Maecenas consequat</p>
               <ul class="list-items pt-3">
                  <li>3015 Grand Ave, Coconut Grove,<br> Cerrick Way, FL
                     12345
                  </li>
                  <li>+123-456-789</li>
                  <li><a href="#">trizen@yourwebsite.com</a></li>
               </ul>
            </div>
            <!-- end footer-item -->
         </div>
         <!-- end col-lg-3 -->
         <div class="col-lg-3 responsive-column">
            <div class="footer-item">
               <h4 class="title curve-shape pb-3 margin-bottom-20px"
                  data-text="curvs">Company</h4>
               <ul class="list-items list--items">
                  <li><a href="about.html">About us</a></li>
                  <li><a href="services.html">Services</a></li>
                  <li><a href="#">Jobs</a></li>
                  <li><a href="blog-grid.html">News</a></li>
                  <li><a href="contact.html">Support</a></li>
                  <li><a href="#">Advertising</a></li>
               </ul>
            </div>
            <!-- end footer-item -->
         </div>
         <!-- end col-lg-3 -->
         <div class="col-lg-3 responsive-column">
            <div class="footer-item">
               <h4 class="title curve-shape pb-3 margin-bottom-20px"
                  data-text="curvs">Other Services</h4>
               <ul class="list-items list--items">
                  <li><a href="#">Investor Relations</a></li>
                  <li><a href="#">Trizen.com Rewards</a></li>
                  <li><a href="#">Partners</a></li>
                  <li><a href="#">List My Hotel</a></li>
                  <li><a href="#">All Hotels</a></li>
                  <li><a href="#">TV Ads</a></li>
               </ul>
            </div>
            <!-- end footer-item -->
         </div>
         <!-- end col-lg-3 -->
         <div class="col-lg-3 responsive-column">
            <div class="footer-item">
               <h4 class="title curve-shape pb-3 margin-bottom-20px"
                  data-text="curvs">Other Links</h4>
               <ul class="list-items list--items">
                  <li><a href="#">USA Vacation Packages</a></li>
                  <li><a href="#">USA Flights</a></li>
                  <li><a href="#">USA Hotels</a></li>
                  <li><a href="#">USA Car Hire</a></li>
                  <li><a href="#">Create an Account</a></li>
                  <li><a href="#">Trizen Reviews</a></li>
               </ul>
            </div>
            <!-- end footer-item -->
         </div>
         <!-- end col-lg-3 -->
      </div>
      <!-- end row -->
      <div class="row align-items-center">
         <div class="col-lg-8">
            <div class="term-box footer-item">
               <ul class="list-items list--items d-flex align-items-center">
                  <li><a href="#">Terms & Conditions</a></li>
                  <li><a href="#">Privacy Policy</a></li>
                  <li><a href="#">Help Center</a></li>
               </ul>
            </div>
         </div>
         <!-- end col-lg-8 -->
         <div class="col-lg-4">
            <div class="footer-social-box text-right">
               <ul class="social-profile">
                  <li><a href="#"><i class="lab la-facebook-f"></i></a></li>
                  <li><a href="#"><i class="lab la-twitter"></i></a></li>
                  <li><a href="#"><i class="lab la-instagram"></i></a></li>
                  <li><a href="#"><i class="lab la-linkedin-in"></i></a></li>
               </ul>
            </div>
         </div>
         <!-- end col-lg-4 -->
      </div>
      <!-- end row -->
   </div>
   <!-- end container -->
   <div class="section-block mt-4"></div>
   <div class="container">
      <div class="row align-items-center">
         <div class="col-lg-7">
            <div class="copy-right padding-top-30px">
               <p class="copy__desc">
                  &copy; Copyright Trizen 2020. Made with <span class="la la-heart"></span>
                  by <a href="https://themeforest.net/user/techydevs/portfolio">TechyDevs</a>
               </p>
            </div>
            <!-- end copy-right -->
         </div>
         <!-- end col-lg-7 -->
         <div class="col-lg-5">
            <div
               class="copy-right-content d-flex align-items-center justify-content-end padding-top-30px">
               <h3 class="title font-size-15 pr-2">We Accept</h3>
               <img src="images/payment-img.png" alt="">
            </div>
            <!-- end copy-right-content -->
         </div>
         <!-- end col-lg-5 -->
      </div>
      <!-- end row -->
   </div>
   </section>
   </form>
   <!-- end container -->

<!-- Footer -->
<%@include file="../include/footer-search.jsp"%>

<script>
/*
 * 댓글 등록하기(Ajax)
 */
function fn_comment(code){
    
    $.ajax({
        type:'POST',
        url : "<c:url value='/reviewInsert.do'/>",
        data:$("#commentForm").serialize(),
        success : function(data){
            if(data=="success")
            {
                getCommentList();
                $("#comment").val("");
            }
        },
        error:function(request,status,error){
            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
 
/**
 * 초기 페이지 로딩시 댓글 불러오기
 */
$(function(){
    
    getCommentList();
    
});
 
/**
 * 댓글 불러오기(Ajax)
 */
function getCommentList(){
    
    $.ajax({
        type:'GET',
        url : "<c:url value='/commentList.do'/>",
        dataType : "json",
        data:$("#commentForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
            
            var html = "";
            var cCnt = data.length;
            
            if(data.length > 0){
                
                for(i=0; i<data.length; i++){
                    html += ' <div class="comment">';
                    html += '    <div class="comment-body">';
                    html += '     <div class="meta-data">'; 
                    html += '        <h3 class="comment__author">Jenny Doe</h3>';
                    html += '         <div class="meta-data-inner d-flex">';         
                   html += '             <span class="ratings d-flex align-items-center mr-1">';
                   html += '             <i class="la la-star"></i> ';
                   html += '             <i class="la la-star"></i> ';
                   html += '             <i class="la la-star"></i> ';
                   html += '             <i class="la la-star"></i> ';
                   html += '             <i class="la la-star"></i> ';
                   html += '              <span>';
                   html += '      <p class="comment_date">April 5, 2019</p>';
                }
                
            } else {
                
                html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
            $("#cCnt").html(cCnt);
            $("#commentList").html(html);
            
        },
        error:function(request,status,error){
            
       }
        
    });
}


</script>