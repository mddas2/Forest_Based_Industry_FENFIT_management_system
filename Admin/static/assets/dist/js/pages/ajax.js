 //this is success call back
 function  CallModalAjax(get_id){	
    alert("hello");
    var CSRF_TOKEN  = "{{ csrf_token }}";
    var form_data = new FormData();
    form_data.append("csrfmiddlewaretoken",CSRF_TOKEN);
    url = '{% url "ajaxIndex" %}';
   
    // $('#signeddoc').val(data);
    // $('#docinfo').text('Signed Document attached!');
    $.ajax({
        url:'/ajax-get-index-data',
        data :{'application_id':get_id},
        beforSend: function () {
           
        },
        success: function (data) {
            Object.entries(data.data).forEach((entry) => {
                const [key, id_data] = entry;
                    var get_nepali_data = '{% url "ajaxGetNepaliData" %}';                     
                   
                    $.ajax({
                            url:'/ajax-get-nepali-data',
                            data:{'application_id':id_data.id},                        
                            beforSend: function () {
                            
                            },
                            success: function (nepali_response) {
                                var nepali_data = nepali_response.data 
                                var string_data = ` <div id="order_detail`+id_data.id+`" class="modal" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title" id="vcenter">Form review</h4>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
        </div>
        <div class="modal-body">
            <!-----order detail-->                        
            <div class="row">
                <!-- Column -->
                <div class="col-lg-12">
                    <div class="card">
                        <div class="row">
                            <div class="col-md-6" id="div_print_application`+id_data.id+`">
                                <button data-bs-dismiss="modal" aria-hidden="true" class="print-hide btn-close" onClick="printdiv('div_print_application`+id_data.id+`');">print</button>
                                <div class="nibedan-form" >
                                    <div class="form-logo">
                                        <img src="/static/assets/images/logo-2.png">
                                    </div>
                                    <div class="fanfet-info">
                                        <ul><li><a href="mailto:fenfitnepal@gmail.com">fenfitnepal@gmail.com</a></li>, <li><a href="tel:015147074">+977 01-5147074</a>, <a href="tel:015147152">5147152</a></li></ul>
                                    </div>
                                    <h5 class="main-title">बिषय : वन उद्यम सुचिकरण सिफारिश गरि दिने सम्वन्धमा</h5>
                                    <div class="nibedan-form-top">
                                        <div class="form-top-left">`
                                            //id_data.user.district_name|get_districtName
                                            //id_data.user.created_at|get_NepaliDate
            if (id_data.user.union_type == 'district'){                    
                var string_data1 =`<p>श्रीमान अध्यक्षज्यू<br> नेपाल वन पैदावार उद्योग व्यवसायी संघ<br>जिल्ला`+nepali_data.district_name + `</p>`
            }
            else {
            var string_data1 =  ` <p>श्रीमान अध्यक्षज्यू<br> ` + id_data.user.approved_company_name + ` <br>वस्तुगत संघ</p>`
            }              
            var string_data2 =   ` </div>
                                        <div class="form-top-right">
                                            <span class="date">मिति: <u> `+nepali_data.payment_created_at+`</u></span>
                                        </div>
                                    </div>
                                    <div class="nibedan-form-body">
                                        <!-- <h2>बिषय : सदस्यता सम्बन्धमा ।</h2> -->
                                        <p>वन ऐन २०७६ को प्रस्तावनामा उल्ल्ेखित वन श्रोतलाई सदुपयोग गरि राष्ट्रिय संमृद्धिमा योगदान पुरयाउने 
                                            ब्यवस्थालाई कार्यान्वयन गर्न गराउन वन नियमावलि २०७९को नियम १२८र नियम १२८को उप नियममा.२मा 
                                            नेपाल वन पैदावार उद्योग ब्यवसायी महासंघको सिफारिसमा डिभिजन वन कार्यालयमा वन उद्यमीहरु सुचीकृत 
                                            हुनु पर्ने ब्यवस्था गरेको ले निम्न कागजात र दस्तुर राखि निवेदन गरेको छु सो अनुसार उपलब्ध गराइृदिनु हुन 
                                            अनुरोध छ । </p>
                                        <h5>संलग्न कागजातहरु :-</h5>
                                        <ul>
                                            <li>कम्पनी वा फर्म दर्ताको प्रमाण पत्र ।</li>
                                            <li>उद्योग दर्ता र नविकरण पत्र ।</li>
                                            <li>आयकर दर्ता प्रमाण पत्र ।</li>        
                                            <li>कर चुक्ताको प्रमाण पत्र (दर्ता भएको दोस्रो आ.ब.देखि) ।</li>        
                                            <li>नियम ५ (३) बमोजिम सदस्यता अद्यावद्यिक भएको प्रमाण पत्र ।</li>
            
                                            <li>कालो सुचीमा नपरेको स्वघोषणा ।</li>
                                            <li>महासंघको खातामा तोकिएको सिफारिस शुल्क जम्मा गरेको वैक भौचर को प्रतिलिपि ।</li>
                                            <li>नेपाल वन पैदावार उद्योग ब्यवसायि महासंघको आचार संहिता र प्रचलित नेपाल कानुन को पुर्णपालन गर्छु भन्ने स्वघोषणा।</li>        
                                        </ul>
                                    </div>
                                    <div class="nibedan-form-footer">
                                        <div class="user-info">
                                           
                                            <label style="font-weight: bold; width: 100%;">आवेदक</label>
                                            {% load staticfiles %}
                                            <label style="width: 100%;">दस्तखत : <span class="user-info-data"><img src="`+id_data.user.signature+`"></span></label>
                                            <label>उद्यमीको नाम : <span class="user-info-data">`+id_data.user.first_name+`</span></label>
                                            <label>उद्योग वा व्यवसायको नाम : <span class="user-info-data">`+nepali_data.business_name+`</span></label>
                                            <label>सम्र्पक नं : <span class="user-info-data">`+id_data.user.phone+`</span></label>
                                            <label>इमेल : <span class="user-info-data">`+id_data.user.email+`</span></label>
                                        </div>
                                        <div class="user-address">
                                            <label>ठेगाना :जिल्ला :<u>`+nepali_data.district_name+`</u></label>
                                            <label>न.पा.÷गा.पा :<u>`+id_data.get_user_application_detail.municipality+`</u></label>
                                            <label>वडा नं."<u>`+id_data.get_user_application_detail.ward_number+`</u></label>
                                            <label>टोल :<u>`+id_data.get_user_application_detail.tole+`</u></label>
                                        </div>
                                    </div>                                        
                                </div>
                                <div class="page-break"></div>
                            </div>
                               <!---certificate-->               
        {% if request.user.role == request.user.CENTRAL and request.user.groups.all.first.name != 'accountant' %}`
        var string_data3 = '';
            if(id_data.is_payment == true){                                                         
             var string_data3 = `<div class="col-md-6" id="div_print_certificate`+id_data.id+`">
                                    <button data-bs-dismiss="modal" aria-hidden="true" class="print-hide btn-close" onClick="printdiv('div_print_certificate`+id_data.id+`');">print</button>
                                    <div class="nibedan-form">
                                        <div class="form-logo">
                                            <img src="/static/assets/images/logo-2.png">
                                        </div>
                                        <div class="fanfet-info">
                                            <ul><li><a href="mailto:fenfitnepal@gmail.com">fenfitnepal@gmail.com</a></li>, <li><a href="tel:015147074">+977 01-5147074</a>, <a href="tel:015147152">5147152</a></li></ul>
                                        </div>
                                        <h5 class="main-title">(वन नियमावलि २०७९ नियम १२८ को उपनियम (२) सँग सम्बन्धित)</h5>                                                    
                                        <div class="nibedan-form-top">
                                            <div class="form-top-left">
                                                <p>सिफारिश पत्र नम्बर : `+id_data.id+`<br>
                                                    </p>
                                            </div>
                                    
                                            <div class="form-top-right">
                                                <span class="date">मिति : `+nepali_data.payment_created_at+`</span>
                                            </div>
                                        </div>
                                        <h5 class="main-title">बिषय : काठ, दाउरामा आधारित उद्योग सुचिकृतका लागि सिफारिस पत्र </h5>
                                        <div class="nibedan-form-top1">
                                            <div class="form-top-left">
                                                <p>श्री डिभिजन वन कार्यालय,<br>
                                                    `+nepali_data.district_name+`</p>
                                            </div>
                                        </div>
                                        
                                        <div class="nibedan-form-body">
                                            <!-- <h2>बिषय : सदस्यता सम्बन्धमा ।</h2> -->
                                            <p>उपरोक्त सम्वन्धमा `+id_data.user.company_name+ ` उद्योगका सञ्चालक । प्रोप्राइटर  `+id_data.user.first_name+`   ले  आवश्यक कागजात साथ  वन नियमावली २०७९ बमोजिम डिभिजन वन कार्यालयमा  उद्योग सुचिकृतका लागि  सिफारिस माग गरेकोले  उक्त उद्योग सुचिकृत गरिदिनु हुन  सिफारिस गरिएको ब्यहोरा अनुरोध  छ </p>
                                        </div>
                                        <div class="nibedan-form-footer">
                                            <div class="user-info">
                                                <label style="font-weight: bold; width: 100%">पद कार्यकारी निर्देशक</label>
                                                <label style="width:100%">नाम: <span class="user-info-data">`+id_data.payment[Object.keys(id_data.payment).length-1].ceo_approved_name+`</span></label>
                                                {% load staticfiles %}
                                                <label style="width:100%">दस्तखत : <span class="user-info-data"><img
                                                    src="`+id_data.payment[Object.keys(id_data.payment).length-1].ceo_approved_signature+`"></span></label>
                                            </div>
                                        </div>
                
                                    </div>
                                    <div class="page-break"></div>
                                </div>{% endif %}`}
                                                       
                            
                                // <!------certificate------>                                    
        var certificate =  `<div class="col-md-6" id="div_print_document">
                                <div class="row zoom-gallery" id="documents">
                                    <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">नागरिकता पर्तिलिपि</h4>
                                                
                                                <a href="`+id_data.get_user_application_detail.certificate_citizenship+`" title="zoom image"> <img src="`+id_data.get_user_application_detail.certificate_citizenship+`" class="img-responsive img-fit"" alt="img" /> </a>
                                                                                                    
                                            </div>
                                        </div>
                                        <div class="page-break"></div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">कम्पनी दर्ताको प्रमाण पत्र पर्तिलिपि​</h4>                                                           
                                                <a href="`+id_data.get_user_application_detail.certificate_company_registration+`" title="zoom image"> <img src="`+id_data.get_user_application_detail.certificate_company_registration+`" class="img-responsive img-fit"" alt="img" /> </a>                                                    
                                            </div>
                                        </div>
                                        <div class="page-break"></div>
                                    </div>
            
                                    <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">स्थायी लेखा नम्बरको पर्तिलिपि</h4>
                                                <a href="`+id_data.get_user_application_detail.provisional_account_number+`" title="zoom image"> <img src="`+id_data.get_user_application_detail.provisional_account_number+`" class="img-responsive img-fit"" alt="img" /> </a>
                                                                       
                                                
                                            </div>
                                        </div>
                                        <div class="page-break"></div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">कर चुक्ता प्रमाण पत्रको पर्तिलिपि</h4>
                                              
                                                <a href="`+id_data.get_user_application_detail.tax_paid_certificate+`" title="zoom image"> <img src="`+id_data.get_user_application_detail.tax_paid_certificate+`" class="img-responsive img-fit"" alt="img" /> </a>

                                               
                                            </div>
                                        </div>
                                        <div class="page-break"></div>
                                    </div>
                                    {% if request.user.role == request.user.CENTRAL %}
                                        <div class="col-md-6" id="bank_voucher">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h4 class="card-title">बैंक भौचर को प्रतिलिपि</h4>
                                                   
                                                    <a href="`+id_data.get_user_application_detail.bank_voucher+`" title="zoom image"> <img src="`+id_data.get_user_application_detail.bank_voucher+`" class="img-responsive img-fit"" alt="img" /> </a>

                                                   
                                                </div>
                                            </div>
                                            <div class="page-break"></div>
                                        </div>
                                    {% endif %}
                                    <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">उद्योग प्रमाणपत्र अगाडि पटी</h4>
                                                
                                                <a href="`+id_data.get_user_application_detail.industry_certificate_front_side+`" title="zoom image"> <img src="`+id_data.get_user_application_detail.industry_certificate_front_side+`" class="img-responsive img-fit"" alt="img" /> </a>
                                                
                                            </div>
                                        </div>
                                        <div class="page-break"></div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title">उद्योग प्रमाणपत्र पछाडी पटी</h4>                                                   

                                                <a href="`+id_data.get_user_application_detail.industry_certificate_front_side+`" title="zoom image"> <img src="`+id_data.get_user_application_detail.industry_certificate_front_side+`" class="img-responsive img-fit"" alt="img" /> </a>
                                               
                                            </div>
                                        </div>
                                        <div class="page-break"></div>
                                    </div>
                                </div>
                            </div>    
                            <div class="col-md-6">
                                <div class="card other_informtion">
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="tablesaw table-striped table-hover table-bordered table no-wrap"
                                                    data-tablesaw-mode="columntoggle">
                                                    <thead>                                                            
                                                        <tr>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist" class="border">
                                                                उद्योग/कम्पनीको नाम</th>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col
                                                                data-tablesaw-priority="3" class="border">व्यवसाय को नाम</th>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2" class="border">सिफारिस शुल्क र सो को वाडफाड
                                                            </th>                                                
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                       
                                                        <tr>
                                                            <td class="title"><a class="link" href="javascript:void(0)">`+id_data.get_user_application_detail.owner_full_name+`</a></td>
                                                            <td>`+id_data.get_user_application_detail.business_name+`</td>
                                                            <td><span style="color: red; font-size: 15px; font-weight: 600;">(Rs.`+id_data.get_user_application_detail.payment_rupees+`)</span>/`+id_data.get_user_application_detail.business_price_category+`</td>
                                                           
                                                        </tr>                                                           
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card other_informtion">
                                        <div class="card-body">
                                            <!-- <h4 class="card-title">Column Toggle Table</h4> -->
                                            <!-- <h5 class="card-subtitle mb-3">The Column Toggle Table allows the user to select which -->
                                                <!-- columns they want to be visible.</h5> -->
                                            <div class="table-responsive">
                                                <table class="tablesaw table-striped table-hover table-bordered table no-wrap"
                                                    data-tablesaw-mode="columntoggle">
                                                    <thead>
                                                        <!-- start row -->
                                                        <tr>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1" class="border">
                                                                <abbr title="voucher number">बैंक भुगतान भौचर नम्बर</abbr>
                                                            </th>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4" class="border">कम्पनीको अधिकृत पुजी
                                                            </th>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4" class="border">कर रकम
                                                            </th>                                                                       
                                                        </tr> <!-- end row -->
                                                    </thead>
                                                    <tbody>
                                                        <!-- start row -->
                                                        <tr>
                                                            <td class="title"><a class="link" href="javascript:void(0)">`+id_data.get_user_application_detail.voucher_number+`</a></td>
                                                            <td>`+id_data.get_user_application_detail.authorized_capital_of_company+`</td>
                                                            <td>`+id_data.get_user_application_detail.tax_amount+`</td>
                                                        </tr>                                                            
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card other_informtion">
                                        <div class="card-body">
                                            <!-- <h4 class="card-title">Column Toggle Table</h4> -->
                                            <!-- <h5 class="card-subtitle mb-3">The Column Toggle Table allows the user to select which -->
                                                <!-- columns they want to be visible.</h5> -->
                                            <div class="table-responsive">
                                                <table class="tablesaw table-striped table-hover table-bordered table no-wrap"
                                                    data-tablesaw-mode="columntoggle">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4" class="border">कामदार तथा कर्मचारि स.ख्या
                                                            </th>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4" class="border">कम्पनीको चुक्ता पुजी
                                                            </th>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4" class="border">प्रदेश
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="title"><a class="link" href="javascript:void(0)">`+id_data.get_user_application_detail.number_of_employees+`</a></td>
                                                            <td>`+id_data.get_user_application_detail.paid_up_capital_of_company+`</td>
                                                            <td>`+id_data.user.state_name+`</td>
                                                        </tr>
                                                       
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card other_informtion">
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="tablesaw table-striped table-hover table-bordered table no-wrap"
                                                    data-tablesaw-mode="columntoggle">
                                                    <thead>
                                                        <tr>                                                        
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4" class="border">जिल्ला
                                                            </th>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4" class="border">नगरपालिका/गाउँपालिका
                                                            </th>
                                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4" class="border">वडा नं.
                                                            </th>
                                                        </tr> 
                                                    </thead>
                                                    <tbody>
                                                        
                                                        <tr>
                                                            <td class="title"><a class="link" href="javascript:void(0)">`+id_data.user.state_name+`</a></td>
                                                            <td>`+id_data.user.district_name+`</td>
                                                            <td>`+id_data.get_user_application_detail.ward_number+`</td>
                                                        </tr> 
                                                       
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                            </div>                                    
                        </div>                                   
            
                    
                    </div>
                </div>
                <!-- Column -->
            </div>
            <div class="row">

                <!-- column -->
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title card-title">सिफारिश अनुमोदन प्रगति पट्टी<a class="get-code" data-bs-toggle="collapse"
                                    href="#pgr2" aria-expanded="true"></a></h4>
            
                            <div class="progress m-t-20">
                                <div class="progress-bar bg-success"
                                    style="width: {% if id_data.dsc == 'district' %} 15% {% elif id_data.dsc == 'state' %} 30% {% elif id_data.dsc == 'central_accountant' %} 45% {% elif id_data.dsc == 'central_admin' %} 60% {% elif id_data.dsc == 'central_ceo' %} 75%  {% elif id_data.dsc == 'approved' %} 100%  {% else %} 15% {% endif %} ; height:15px;"
                                    role="progressbar">{% if id_data.dsc == 'district' %} 15% {% elif id_data.dsc == 'state' %} 30% {% elif id_data.dsc == 'central_accountant' %} 45% {% elif id_data.dsc == 'central_admin' %} 60% {% elif id_data.dsc == 'central_ceo' %} 75%  {% elif id_data.dsc == 'approved' %} 100%  {% else %} 15% {% endif %}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                                                                                            
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <center>
                        <h3 class="card-title">FENFIT APPLICATION</h3>
                        <h6 class="card-subtitle text-info">{% if id_data.dsc == 'district' %} Pending on जिल्ला संघ {{id_data.get_user_application_detail.district}} {% elif id_data.dsc == 'state' %} Pending on प्रदेश संघ{{id_data.get_user_application_detail.state}} {% elif id_data.dsc == 'central_accountant' %} Pending on महासंघ लेखापाल {% elif id_data.dsc == 'central_admin' %} Pending on महासंघ व्यवस्थापक {% elif id_data.dsc == 'central_ceo' %} Pending on महासंघ मुख्य व्यवस्थापक {% else %} User Need to Forward for further Process {% endif %}</h6>
                        <!-- <h4 class="box-title m-t-40">Application description</h4>
                            <p>Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. but the majority have suffered alteration in some form, by injected humour</p> -->
                        <h2 class="m-t-4 card-title"><small class="text-success">{% if id_data.dsc == 'district' %} (15% COMPLETED) {% elif id_data.dsc == 'state' %} (35% COMPLETED) {% elif id_data.dsc == 'central_accountant' %} (45% COMPLETED) {% elif id_data.dsc == 'central_admin' %} (60% COMPLETED) {% elif id_data.dsc == 'central_ceo' %} (75% COMPLETED)  {% elif id_data.dsc == 'approved' %} (100% COMPLETED)  {% else %} (15% COMPLETED) {% endif %}</small></h2>
                        <button
                            class="btn btn-sm btn-{% if id_data.user.applicationform.all.first.dsc == 'approved' %}success btn-rounded{% else %}primary btn-rounded{% endif %}">{% if id_data.dsc == 'district' %} जिल्ला संघ {{request.user.district_name}} NOT APPROVED YET {% elif id_data.dsc == 'state' %} प्रदेश संघ {{id_data.get_user_application_detail.state}} NOT APPROVED YET {% elif id_data.dsc == 'central_accountant' %} महासंघ लेखापालले अझै स्वीकृत गेरेको छैन {% elif id_data.dsc == 'central_admin' %} प्रशासकले अझै स्वीकृत गेरेको छैन| {% elif id_data.dsc == 'central_ceo' %}मुख्य प्रशासकले अझै स्वीकृत गेरेको छैन|  {% elif id_data.dsc == 'approved' %} (100% COMPLETED)  {% else %} (15% COMPLETED) {% endif %}</button>
                    </center>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <center>
                       <h3 class="box-title m-t-4">Comments Highlights</h3>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-check text-success"></i> Sturdy structure</li>
                            <li><i class="fa fa-check text-success"></i> Designed to foster easy portability</li>
                            <li><i class="fa fa-check text-success"></i> Perfect furniture to flaunt your wonderful collectibles</li>
                        </ul>
                    </center>
                </div>
                
                <!-- column -->
            </div>
           
            <!-----close order detail-->
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-info waves-effect text-white" data-bs-dismiss="modal">Close</button>
        </div>
    </div>
    <!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>`;
                
                $('#ajax_modal').prepend(string_data+string_data1+string_data2+string_data3+certificate); 
                            }

                        })
            });
        },
        error: function (error) {
          alert("error");
        }
    })
 }