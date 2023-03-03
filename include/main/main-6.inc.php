<!-- secton: Contact -->

<?php

$infContact = getInfoServiceContact();


?>
<section class="contact-section section-bg section-padding" id="section_contact">
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12">
                <div class="section-title-wrap mb-5">
                    <h2 class="section-title">Get in touch | <?php echo $infContact['name']; ?></h2>

                    <div class="section-title-bottom">
                        <span class="section-title-line"></span>
                        <i class="section-title-icon bi-heart-fill"></i>
                        <span class="section-title-line"></span>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 col-12">
                <h4 class="mb-4">Visit Us</h4>

                <p><?php echo $infContact['address']; ?></p>
                <!-- <p> 5th Avenue at, Central Park S,
                    <br> New York, NY 10019, United States
                </p> -->
            </div>

            <div class="col-lg-4 col-md-6 col-12 my-4 my-lg-0 my-md-0">
                <h4 class="mb-4">Contact Information</h4>

                <p class="mb-2">
                    <a href="mailto:hello@company.com">
                       | <?php echo $infContact['email']; ?>
                    </a>
                </p>

                <p>
                    <a href="tel: 090-080-0760">
                        | <?php echo $infContact['phone']; ?>
                    </a>
                </p>
            </div>

            <div class="col-lg-4 col-md-6 col-12">
                <h4 class="mb-4">Socials</h4>

                <ul class="social-icon">
                    
                    <li class="social-icon-item"><a href="#" class="social-icon-link bi-instagram"></a></li>

                    <li class="social-icon-item"><a href="<?php echo explode(',', $infContact['social_links'])[0]; ?>" target="_blank" class="social-icon-link bi-facebook"></a></li>
                </ul>

                <!-- <p class="copyright-text mt-3 mb-0">Copyright © 2036 Wedding Lite Co., Ltd.
                    <br> Design: <a href="https://www.tooplate.com" target="_parent">Tooplate</a>
                </p> -->
            </div>

        </div>
    </div>
</section>