<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- Admin-Header -->
<%@include file="../include/header-admin.jsp"%>
<!-- ================================
    START DASHBOARD AREA
================================= -->
<section class="dashboard-area">    
    <div class="dashboard-content-wrap">
        <div class="dashboard-bread dashboard--bread dashboard-bread-2">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="breadcrumb-content">
                            <div class="section-heading">
                                <h2 class="sec__title font-size-30 text-white">예약 페이지</h2>
                            </div>
                        </div><!-- end breadcrumb-content -->
                    </div><!-- end col-lg-6 -->                    
                </div><!-- end row -->
            </div>
        </div><!-- end dashboard-bread -->
        <div class="dashboard-main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-box">
                            <div class="form-title-wrap">
                                <div class="d-flex align-items-center justify-content-between">
                                    <div>
                                        <h3 class="title">예약 현황</h3>
                                        <p class="font-size-14">20개 중 1 ~ 8개 보기</p>
                                    </div>
                                    <div class="select-contain">
                                        <select class="select-contain-select">
                                            <option value="1">상관없음</option>
                                            <option value="2">최신 순</option>
                                            <option value="3">오래된 순</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                           <div class="form-content">
                               <div class="table-form table-responsive">
                                   <table class="table">
                                       <thead>
                                       <tr>
                                           <th scope="col">사용자 이메일</th>
                                           <th scope="col">이름</th>
                                           <th scope="col">예약 상품 (호텔/항공)</th>
                                           <th scope="col">금액</th>
                                           <th scope="col">결제방식</th>
                                           <th scope="col">결제 현황</th>
                                           <th scope="col">연락처</th>
                                       </tr>
                                       </thead>
                                       <tbody>
                                       <tr>
                                           <th scope="row">alexsmith@gmail.com</th>
                                           <td>
                                               <div class="table-content">
                                                   <h3 class="title">Alex</h3>
                                               </div>
                                           </td>
                                           <td>Trip of New York – Discover America</td>
                                           <td>$399</td>
                                           <td>KaKaoPay</td>
                                           <td><span class="badge badge-success py-1 px-2">결제 완료</span></td>
                                           <td>
                                               <div class="table-content">
                                                   <a href="#" class="theme-btn theme-btn-small" data-toggle="modal" data-target="#modalPopup"><i class="la la-envelope"></i></a>
                                               </div>
                                           </td>
                                       </tr>
                                       <tr>
                                           <th scope="row">markhardson@gmail.com</th>
                                           <td>
                                               <div class="table-content">
                                                   <h3 class="title">Hardson</h3>
                                               </div>
                                           </td>
                                           <td>America’s National Parks with Denver</td>
                                           <td>$399</td>
                                           <td>NaverPay</td>
                                           <td><span class="badge badge-warning text-white py-1 px-2">결제 대기</span></td>
                                           <td>
                                               <div class="table-content">
                                                   <a href="#" class="theme-btn theme-btn-small" data-toggle="modal" data-target="#modalPopup"><i class="la la-envelope"></i></a>
                                               </div>
                                           </td>
                                       </tr>
                                       <tr>
                                           <th scope="row">davidmartin@gmail.com</th>
                                           <td>
                                               <div class="table-content">
                                                   <h3 class="title">Martin</h3>
                                               </div>
                                           </td>
                                           <td>Eastern Discovery Start New Orleans</td>
                                           <td>$399</td>
                                           <td>NaverPay</td>
                                           <td><span class="badge badge-info py-1 px-2">장바구니</span></td>
                                           <td>
                                               <div class="table-content">
                                                   <a href="#" class="theme-btn theme-btn-small" data-toggle="modal" data-target="#modalPopup"><i class="la la-envelope"></i></a>
                                               </div>
                                           </td>
                                       </tr>
                                       <tr>
                                           <th scope="row">johndoe@gmail.com</th>
                                           <td>
                                               <div class="table-content">
                                                   <h3 class="title">Doe</h3>
                                               </div>
                                           </td>
                                           <td>New york to Beijing</td>
                                           <td>$399</td>
                                           <td>KaKaoPay</td>
                                           <td><span class="badge badge-danger py-1 px-2">결제 취소</span></td>
                                           <td>
                                               <div class="table-content">
                                                   <a href="#" class="theme-btn theme-btn-small" data-toggle="modal" data-target="#modalPopup"><i class="la la-envelope"></i></a>
                                               </div>
                                           </td>
                                       </tr>

                                       <tr>
                                           <th scope="row">joshpurdil@gmail.com</th>
                                           <td>
                                               <div class="table-content">
                                                   <h3 class="title">Purdila</h3>
                                               </div>
                                           </td>
                                           <td>Los Angeles to San Francisco Express</td>
                                           <td>$399</td>
                                           <td>KaKaoPay</td>
                                           <td><span class="badge badge-success py-1 px-2">결제 완료</span></td>
                                           <td>
                                               <div class="table-content">
                                                   <a href="#" class="theme-btn theme-btn-small" data-toggle="modal" data-target="#modalPopup"><i class="la la-envelope"></i></a>
                                               </div>
                                           </td>
                                       </tr>
                                       <tr>
                                           <th scope="row">kamranadi@gmail.com</th>
                                           <td>
                                               <div class="table-content">
                                                   <h3 class="title">Kamran</h3>
                                               </div>
                                           </td>
                                           <td>Istanbul to Dhaka</td>
                                           <td>$399</td>
                                           <td>KaKaoPay</td>
                                           <td><span class="badge badge-success py-1 px-2">결제 완료</span></td>
                                           <td>
                                               <div class="table-content">
                                                   <a href="#" class="theme-btn theme-btn-small" data-toggle="modal" data-target="#modalPopup"><i class="la la-envelope"></i></a>
                                               </div>
                                           </td>
                                       </tr>
                                       <tr>
                                           <th scope="row">markdoe@gmail.com</th>
                                           <td>
                                               <div class="table-content">
                                                   <h3 class="title">Mark</h3>
                                               </div>
                                           </td>
                                           <td>London to Dubai</td>
                                           <td>$399</td>
                                           <td>Credit</td>
                                           <td><span class="badge badge-success py-1 px-2">결제 완료</span></td>
                                           <td>
                                               <div class="table-content">
                                                   <a href="#" class="theme-btn theme-btn-small" data-toggle="modal" data-target="#modalPopup"><i class="la la-envelope"></i></a>
                                               </div>
                                           </td>
                                       </tr>
                                       <tr>
                                           <th scope="row">brendoneich@gmail.com</th>
                                           <td>
                                               <div class="table-content">
                                                   <h3 class="title">Brendon</h3>
                                               </div>
                                           </td>
                                           <td>New York: Museum of Modern Art</td>
                                           <td>$399</td>
                                           <td>Credit</td>
                                           <td><span class="badge badge-success py-1 px-2">결제 완료</span></td>
                                           <td>
                                               <div class="table-content">
                                                   <a href="#" class="theme-btn theme-btn-small" data-toggle="modal" data-target="#modalPopup"><i class="la la-envelope"></i></a>
                                               </div>
                                           </td>
                                       </tr>
                                       </tbody>
                                   </table>
                               </div>
                           </div>
                        </div><!-- end form-box -->
                    </div><!-- end col-lg-12 -->
                </div><!-- end row -->
                <div class="row">
                    <div class="col-lg-12">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link page-link-nav" href="#" aria-label="Previous">
                                        <span aria-hidden="true"><i class="la la-angle-left"></i></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link page-link-nav" href="#">1</a></li>
                                <li class="page-item active">
                                    <a class="page-link page-link-nav" href="#">2 <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="page-item"><a class="page-link page-link-nav" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link page-link-nav" href="#" aria-label="Next">
                                        <span aria-hidden="true"><i class="la la-angle-right"></i></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>                
            </div><!-- end container-fluid -->
        </div><!-- end dashboard-main-content -->
    </div><!-- end dashboard-content-wrap -->
</section><!-- end dashboard-area -->
<!-- ================================
    END DASHBOARD AREA
================================= -->
<!-- Admin-Footer -->
<%@include file="../include/footer-admin.jsp"%>