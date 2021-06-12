<section class="about_us sect_pad bg_img_area">
        <div class="bg_img_left wow fadeIn" data-wow-delay="0.5s"></div>
        <div class="container">
        <?php if ($this->session->flashdata('message')) { ?>
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <?php echo $this->session->flashdata('message') ?>
                    </div>
                    <?php } ?>
                    <?php if ($this->session->flashdata('exception')) { ?>
                    <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <?php echo $this->session->flashdata('exception') ?>
                    </div>
                    <?php } ?>
                    <?php if (validation_errors()) { ?>
                    <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <?php echo validation_errors() ?>
                    </div>
                    <?php } ?>
            <div class="row about_inner">
                <div class="col-lg-5 col-xl-6 text-center wow fadeIn">
                    <div class="sect_title mb-4">
                        <h2 class="curve_title"><?php echo $banner_story[0]->title;?></h2>
                        <h3 class="big_title"><?php echo $banner_story[0]->subtitle;?></h3>
                    </div>
                    <div class="aboutus_text mb-lg-0 mb-5">
                    <?php $story=$this->db->select('*')->from('tbl_widget')->where('widgetid',9)->get()->row();?>
                        <p class="mb-4"> <?php echo $story->widget_desc;?></p>
                        <a href="<?php echo $banner_story[0]->slink;?>" class="simple_btn">Read more</a>
                    </div>
                </div>
                <div class="col-lg-7 col-xl-6">
                    <div class="row">
                    <?php foreach($banner_story as $story){?>
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                            <div class="img_part mb-4 mb-sm-0 wow fadeIn" data-wow-delay="0.4s">
                                <img src="<?php echo base_url().$story->image;?>" class="img-fluid" alt="<?php echo $story->title?>">
                            </div>
                        </div>
                        <?php } ?>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>