REACT-CPP-CURL
==============

C++ asynchronous cURL wrapper on top of the REACT-CPP library. Uses lambdas and callbacks to return query results.

Request class
=============

The React::Curl::Request class is used to build your requests and execute them.

```
#include <reactcpp/curl.h>
#include <iostream>

int main()
{
    // create an event loop
    React::MainLoop loop;

    React::Curl::Request request(&loop, "http://example.org");
    request.execute().onSuccess([](React::Curl::Result &&result) {
            std::cout << "Callback" << std::endl;
            std::cout << result.body() << std::endl;
            std::cout << "Headers" << std::endl;
            std::cout << result.headers() << std::endl;
        }).onFailure([](const char *error) {
            std::cerr << "Error: " << error << std::endl;
        });

    loop.run();
}
```

As you can see you'll get a Result object in your success callback which allows you to access the body and the headers of the result.
