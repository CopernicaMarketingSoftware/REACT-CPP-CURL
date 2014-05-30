/**
 *  Curl.h
 *
 *  Main header file for the CURL wrapper library
 *
 *  @copyright 2014 Copernica BV
 */

#pragma once

/**
 *  Dependencies
 */
#include <reactcpp.h>
#include <curl/curl.h>
#include <functional>
#include <memory>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <numeric>

/**
 *  Other include files
 */
#include <reactcpp/curl/curlmulti.h>
#include <reactcpp/curl/result.h>
#include <reactcpp/curl/request.h>