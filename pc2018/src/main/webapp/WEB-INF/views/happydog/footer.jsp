<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <!-- ******FOOTER****** --> 
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">About</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Company</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Jobs</a> <label class="label label-new">We're hiring</label></li>
                            <li><a href="#">Press</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div><!--//footer-col-inner-->
                </div><!--//footer-col-->
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">Product</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Features</a></li>
                            <li><a href="#">Tutorials</a></li>
                            <li><a href="#">Support Center</a></li>
                            <li><a href="#">Pricing</a></li>
                            <li><a href="#">Customers</a></li>
                        </ul>
                    </div>
                </div><!--//footer-col-->
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">Useful Links</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Sign up</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Become our partner</a></li>
                            <li><a href="#">FAQs</a></li>
                        </ul>
                    </div>
                </div><!--//footer-col-->
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">Legal</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Terms of Services</a></li>
                            <li><a href="#">Policies</a></li>
                        </ul>
                    </div>
                </div><!--//footer-col-->
            </div><!--//row-->
            <div class="divider"></div>
            <div class="footer-bottom text-center">
                <ul class="social-media list-inline">
                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                    
                </ul>
    
                <small class="copyright">Template Copyright @ <a href="http://themes.3rdwavemedia.com/" target="_blank">3rd Wave Media</a></small> 
            </div>
        </div><!--//container-->
    </footer><!--//footer-->
    
    <!-- Login Modal -->
    <div class="modal modal-auth modal-login" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="loginModalLabel" class="modal-title text-center">Log in to your account</h4>
                </div>
                <div class="modal-body">
                    <div class="social-login text-center">                        
                        <ul class="social-buttons list-unstyled">
                            <li><a href="#" class="btn btn-social btn-google btn-block"><i class="fa fa-google" aria-hidden="true"></i><span class="btn-text">Log in with Google</span></a></li>
                            <li><a href="#" class="btn btn-social btn-facebook btn-block"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">Log in with Facebook</span></a></li>
                        </ul>
                    </div>
                    <div class="divider">
                        <span class="or-text">OR</span>
                    </div>
                    <div class="login-form-container">
                        <form class="login-form">                
                            <div class="form-group email">
                                <i class="material-icons icon">&#xE0BE;</i>
                                <label class="sr-only" for="login-email">Email</label>
                                <input id="login-email" name="login-email" type="email" class="form-control login-email" placeholder="Email">
                            </div><!--//form-group-->
                            <div class="form-group password">
                                <i class="material-icons icon">&#xE897;</i>
                                <label class="sr-only" for="login-password">Password</label>
                                <input id="login-password" name="login-password" type="password" class="form-control login-password" placeholder="Password">
                                <div class="extra">
                                    <div class="checkbox remember">
                                        <label>
                                            <input type="checkbox"> Remember me
                                        </label>
                                    </div><!--//check-box-->
                                    <div class="forgotten-password">
                                        <a href="#" id="resetpass-link" data-toggle="modal" data-target="#resetpass-modal">Forgotten password?</a>
                                    </div>
                                </div><!--//extra-->
                            </div><!--//form-group-->
                            <button type="submit" class="btn btn-cta btn-block btn-primary">Log in</button>
                        </form>
                    </div><!--//login-form-container-->
                    
                    <div class="option-container">
                        <div class="lead-text">Don't have an account?</div> 
                        <a class="signup-link btn btn-ghost-alt" id="signup-link" href="#">Sign Up</a>                    
                    </div><!--//option-container-->
                </div><!--//modal-body-->
                
            </div><!--//modal-content-->
        </div><!--//modal-dialog-->
    </div><!--//modal-->
    
    <!-- Signup Modal -->
    <div class="modal modal-auth modal-signup" id="signup-modal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="signupModalLabel" class="modal-title text-center">Sign up to start your 30 day free trial!</h4>
                </div>
                <div class="modal-body">
                    <div class="social-login text-center">                        
                        <ul class="social-buttons list-unstyled">
                            <li><a href="#" class="btn btn-social btn-google btn-block"><i class="fa fa-google" aria-hidden="true"></i><span class="btn-text">Sign up with Google</span></a></li>
                            <li><a href="#" class="btn btn-social btn-facebook btn-block"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">Sign up with Facebook</span></a></li>
                        </ul>
                    </div>
                    <div class="divider">
                        <span class="or-text">OR</span>
                    </div>
                    <div class="login-form-container">
                        <form class="login-form">         
                            <div class="form-group full-name">
                                <i class="material-icons icon">&#xE7FD;</i>
                                <label class="sr-only" for="signup-fullname">Your Full Name</label>
                                <input id="signup-fullname" name="signup-fullname" type="text" class="form-control signup-email" placeholder="Your Full Name">
                            </div><!--//form-group-->       
                            <div class="form-group email">
                                <i class="material-icons icon">&#xE0BE;</i>
                                <label class="sr-only" for="signup-email">Your Email</label>
                                <input id="signup-email" name="signup-email" type="email" class="form-control signup-email" placeholder="Your Email">
                            </div><!--//form-group-->
                            <div class="form-group password">
                                <i class="material-icons icon">&#xE897;</i>
                                <label class="sr-only" for="signup-password">Create a Password</label>
                                <input id="signup-password" name="signup-password" type="password" class="form-control signup-password" placeholder="Create a Password">
                            </div><!--//form-group-->
                            <div class="legal-note">By signing up, you agree to our terms of services and privacy policy.</div>
                            <button type="submit" class="btn btn-block btn-primary btn-cta">Sign up</button>
                            
                        </form>
                    </div><!--//login-form-container-->
                    <div class="option-container">
                        <div class="lead-text">Already have an account?</div> 
                        <a class="login-link btn btn-ghost-alt" id="login-link" href="#">Log in</a>                    
                    </div><!--//option-container-->
                </div><!--//modal-body-->
            </div><!--//modal-content-->
        </div><!--//modal-dialog-->
    </div><!--//modal-->
    
    <!-- Reset Password Modal -->
    <div class="modal modal-auth modal-resetpass" id="resetpass-modal" tabindex="-1" role="dialog" aria-labelledby="resetpassModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="resetpassModalLabel" class="modal-title text-center">Forgot your password?</h4>
                </div>
                <div class="modal-body">
                    <div class="resetpass-form-container">
                        <p class="intro">We'll email you a link to a page where you can easily create a new password.</p>
                        <form class="resetpass-form">                
                            <div class="form-group email">
                                <label class="sr-only" for="reg-email">Your Email</label>
                                <input id="reg-email" name="reg-email" type="email" class="form-control login-email" placeholder="Your Email">
                            </div><!--//form-group-->
                            <button type="submit" class="btn btn-block btn-secondary btn-cta">Reset Password</button>
                        </form>
                    </div><!--//login-form-container-->
                    <div class="option-container">
                        <div class="lead-text">I want to <a class="back-to-login-link" id="back-to-login-link" href="#">return to login</a></div>                    
                    </div><!--//option-container-->
                </div><!--//modal-body-->
            </div><!--//modal-content-->
        </div><!--//modal-dialog-->
    </div><!--//modal-->
    
    <!-- *****CONFIGURE STYLE (REMOVE ON YOUR PRODUCTION SITE)****** -->  
    <div id="config-panel" class="config-panel hidden-xs hidden-sm">
        <div class="panel-inner">
            <a id="config-trigger" class="config-trigger config-panel-hide" href="#"><i class="fa fa-cog"></i></a>
            <h5 class="panel-title">Choose Colour</h5>
            <ul id="color-options" class="list-unstyled list-inline">
                <li class="theme-1"><a data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css" href="#"></a></li>
                <li class="theme-2 active"><a data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-2.css" href="#"></a></li>
                <li class="theme-3"><a data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-3.css" href="#"></a></li>
                <li class="theme-4"><a data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-4.css" href="#"></a></li>     
                <li class="theme-5"><a data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-5.css" href="#"></a></li>    
                <li class="theme-6"><a data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-6.css" href="#"></a></li>             
            </ul>
            <a id="config-close" class="close" href="#"><i class="fa fa-times-circle"></i></a>
        </div><!--//panel-inner-->
    </div><!--//configure-panel-->
 
   