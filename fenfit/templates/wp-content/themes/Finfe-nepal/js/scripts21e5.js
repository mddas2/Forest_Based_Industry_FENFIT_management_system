jQuery(document).ready(function($){

    //slider
    lightGallery(document.getElementById('lightgallery'));
    
     //data table
    $('#example').DataTable();

// SLIDER

    $('.type1').owlCarousel({
        loop: true,
        margin: 0,
        autoplay: true,
        autoplaySpeed: 1500,
        autoplayTimeout: 6000,
        stopOnHover: true,
        dots: true,
        nav: false,

        responsive: {
            0: {
                items: 1
            },
            768: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    })


// ABROAD COUNTRY

    $('.type2').owlCarousel({
        loop: true,
        margin: 10,
        autoplay: true,
        autoplaySpeed: 1500,
        autoplayTimeout: 6000,
        stopOnHover: true,
        dots: false,
        nav: true,

        responsive: {
            0: {
                items: 1
            },
            768: {
                items: 3
            },
            1000: {
                items: 4
            }
        }
    })


// TESTIMONIAL

    $('.type3').owlCarousel({
        loop: true,
        margin: 10,
        autoplay: true,
        autoplaySpeed: 1500,
        autoplayTimeout: 6000,
        stopOnHover: true,
        dots: false,
        nav: true,

        responsive: {
            0: {
                items: 1
            },
            768: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    })
});
