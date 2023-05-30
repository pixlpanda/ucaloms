<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('User\Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
// $routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'User\Home::index');
$routes->get('products', 'User\Products::index');
$routes->get('product-details(:any)', 'User\ProductDetails::index/$1');
$routes->get('account', 'User\Profile::index');
$routes->get('category/(:any)', 'User\Category::index/$1');
$routes->get('cart', 'User\Cart::index');
$routes->get('checkout', 'User\Checkout::index');
$routes->get('order-status', 'User\Confirmation::index');
$routes->get('dashboard', 'User\Dashboard::index');
$routes->get('authenticate', 'Auth\Authenticate::index');

$routes->group('products', function($routes){
    $routes->add('/', 'User\Products::index');
    $routes->add('(:any)', 'User\Products::index/$1');
    $routes->add('(:any)/(:any)', 'User\Products::index/$1/$2');
});
$routes->group('product-details', function($routes){
    $routes->add('/', 'User\ProductDetails::index');
    $routes->add('(:any)/(:any)', 'User\ProductDetails::index/$1/$2');
});

// Authentication Routing
$routes->group('auth', function($routes){
    $routes->add('/', 'Auth\Login::index');
    $routes->add('login', 'Auth\Login::login');
    $routes->add('register', 'Auth\Register::index');
    $routes->add('logout', 'Auth\Login::logout');
    $routes->add('forgot-password', 'Auth\ForgotPassword::index');
});
// Accounts Routing
$routes->group('accounts', function($routes){
    $routes->add('/', 'Accounts\Accounts::index');
    $routes->add('addProfileDetails', 'Accounts\Accounts::addProfileDetails');
    $routes->add('updateUserDetails', 'Accounts\Accounts::updateUserDetails');
});


$routes->get('test', 'test::index');
/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
