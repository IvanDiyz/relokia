<?php
function twentytwentythree_child_enqueue_styles()
{
    wp_enqueue_style('parent-style', get_template_directory_uri() . '/style.css');

    wp_enqueue_style('bootstrap-style', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css');
    wp_enqueue_script('bootstrap-script', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js', array(), null, true);

    wp_enqueue_style('inter-font', 'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap');

    wp_enqueue_style('child-style', get_stylesheet_directory_uri() . '/style.css', array('parent-style'));

    wp_enqueue_script('wizard-script', get_stylesheet_directory_uri() . '/wizard.js', array('jquery'), null, true);
}
add_action('wp_enqueue_scripts', 'twentytwentythree_child_enqueue_styles');
add_action('rest_api_init', 'my_custom_form_data_endpoint');

function my_custom_form_data_endpoint() {
    register_rest_route('my_custom_namespace/v1', '/submit-form', [
        'methods' => 'POST',
        'callback' => 'my_form_data_handler',
        'permission_callback' => '__return_true',
    ]);
}

function my_form_data_handler(WP_REST_Request $request) {
    $name = $request->get_param('name');
    $email = $request->get_param('email');
    $phone = $request->get_param('phone');
    $quantity = $request->get_param('quantity');

     $to = 'cijaydiyz@gmail.com';
     $subject = 'New Form Submission';
     $message = "Name: $name\nEmail: $email\nPhone: $phone\nQuantity: $quantity";
     $headers = ['Content-Type: text/plain; charset=UTF-8'];

     $is_mail_sent = wp_mail($to, $subject, $message, $headers);
     if (!$is_mail_sent) {
         error_log('Mail not sent: Check your mail server configuration.');
     }

   
    $post_data = [
        'post_title'   => sanitize_text_field($name),
        'post_content' => sanitize_textarea_field($phone),
        'post_status'  => 'publish',
        'post_type'    => 'post', 
    ];

    $post_id = wp_insert_post($post_data);

    if (!is_wp_error($post_id)) {
        update_post_meta($post_id, '_name', sanitize_text_field($name));
        update_post_meta($post_id, '_phone', sanitize_text_field($phone));
        update_post_meta($post_id, '_email', sanitize_email($email));
        update_post_meta($post_id, '_quantity', sanitize_text_field($quantity));

        return new WP_REST_Response('Success', 200);
    }

    return new WP_REST_Response('Error', 400);
}


function render_wizard_shortcode($atts, $content = null)
{
    $atts = shortcode_atts(
        array(
            'title' => 'Default Title',
        ),
        $atts
    );

    ob_start();
?>
    <div class="wizard-container">
        <div id="wizard" class="wizard">
            <div class="container">
                <div class="row">
                    <div class="col-md-10">
                        <div class="customCard">
                            <div class="customCard__wrapper">
                                <div class="customCard-header">
                                    <div class="customCard-header-tabs">
                                        <ul class="nav customCard-header-list">
                                            <li class="homeSvg">
                                                <svg viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M10.7069 2.293C10.5194 2.10553 10.2651 2.00021 9.99992 2.00021C9.73475 2.00021 9.48045 2.10553 9.29292 2.293L2.29292 9.293C2.11076 9.4816 2.00997 9.7342 2.01224 9.9964C2.01452 10.2586 2.11969 10.5094 2.3051 10.6948C2.49051 10.8802 2.74132 10.9854 3.00352 10.9877C3.26571 10.99 3.51832 10.8892 3.70692 10.707L3.99992 10.414V17C3.99992 17.2652 4.10528 17.5196 4.29281 17.7071C4.48035 17.8946 4.7347 18 4.99992 18H6.99992C7.26514 18 7.51949 17.8946 7.70703 17.7071C7.89456 17.5196 7.99992 17.2652 7.99992 17V15C7.99992 14.7348 8.10528 14.4804 8.29281 14.2929C8.48035 14.1054 8.7347 14 8.99992 14H10.9999C11.2651 14 11.5195 14.1054 11.707 14.2929C11.8946 14.4804 11.9999 14.7348 11.9999 15V17C11.9999 17.2652 12.1053 17.5196 12.2928 17.7071C12.4803 17.8946 12.7347 18 12.9999 18H14.9999C15.2651 18 15.5195 17.8946 15.707 17.7071C15.8946 17.5196 15.9999 17.2652 15.9999 17V10.414L16.2929 10.707C16.4815 10.8892 16.7341 10.99 16.9963 10.9877C17.2585 10.9854 17.5093 10.8802 17.6947 10.6948C17.8801 10.5094 17.9853 10.2586 17.9876 9.9964C17.9899 9.7342 17.8891 9.4816 17.7069 9.293L10.7069 2.293Z" fill="#9CA3AF" />
                                                </svg>
                                            </li>
                                            <li class="nav-item item active">
                                                Contact Info
                                            </li>
                                            <li class="nav-item item">
                                                Quantity
                                            </li>
                                            <li class="nav-item item">
                                                Price
                                            </li>
                                            <li class="nav-item item">
                                                Done
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="change_block">
                                    <div class="customCard-body">
                                        <h3 class="customCard-body__title">Contact Info</h3>
                                        <form class="form" id="myForm">
                                            <div class="d-flex input">
                                                <label for="name" class="form-label">Name</label>
                                                <input type="text" class="form-control" id="name" aria-describedby="nameHelp">
                                            </div>
                                            <div class="d-flex input">
                                                <label for="email" class="form-label">Email</label>
                                                <span class="support_required">required</span>
                                                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" required>
                                            </div>
                                            <div class="d-flex input">
                                                <label for="phone" class="form-label">Phone</label>
                                                <input type="tel" class="form-control" id="phone">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="btn_wrapper">
                                        <button class="btn" type="submit" form="myForm" data-type='next'>Continue</button>
                                        <button class="btn btn_back vision" data-type='back'>
                                            <span class='arrow_btn'>
                                                <svg viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <g filter="url(#filter0_d_1_291)">
                                                        <path d="M9.79488 10.1971L4.82506 5.22727L9.79488 0.257457L10.7537 1.20561L7.42449 4.5348H15.7874V5.91974H7.42449L10.7537 9.24361L9.79488 10.1971Z" fill="#4F46E5" />
                                                    </g>
                                                    <defs>
                                                        <filter id="filter0_d_1_291" x="0.824951" y="0.257446" width="18.9624" height="17.9396" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                                            <feFlood flood-opacity="0" result="BackgroundImageFix" />
                                                            <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha" />
                                                            <feOffset dy="4" />
                                                            <feGaussianBlur stdDeviation="2" />
                                                            <feComposite in2="hardAlpha" operator="out" />
                                                            <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0" />
                                                            <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_1_291" />
                                                            <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_1_291" result="shape" />
                                                        </filter>
                                                    </defs>
                                                </svg>
                                            </span>
                                            Back
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <h1><?php echo esc_html($atts['title']); ?></h1>
                            <p><?php echo wp_kses_post($content); ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php
    return ob_get_clean();
}
add_shortcode('r_test', 'render_wizard_shortcode');
