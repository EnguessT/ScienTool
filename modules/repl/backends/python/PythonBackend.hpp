//
// Created by thierry on 18.05.26.
//

#pragma once

#pragma once

#include <string>
#include <scientool/repl/IReplBackend.hpp>

namespace scientool::repl {

    class PythonBackend : public scientool::repl::IReplBackend {
    public:
        PythonBackend() {}

        std::string evaluate(const std::string& code) override ;

    private:

    };
}


