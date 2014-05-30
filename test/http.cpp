/**
 *  Http.cpp
 *
 *  Http related tests
 *
 *  @copyright 2014 Copernica BV
 */

#include <../curl.h>
#include <gtest/gtest.h>

TEST(Http, Http)
{
    React::MainLoop loop;
    // Timeout after 5 seconds
    loop.onTimeout(5.0, [&loop]() {
        loop.stop();
        FAIL() << "Timeout";
    });

    React::Curl::CurlMulti multi(&loop);

    React::Curl::Request request(&multi, "http://httpbin.org/headers");
    request.execute().onComplete([&loop]() {
        loop.stop();
    });

    loop.run();
}