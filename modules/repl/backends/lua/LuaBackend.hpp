//
// Created by thierry on 18.05.26.
//

#pragma once

#include <string>
#include <scientool/repl/IReplBackend.hpp>

namespace scientool::repl {

    class LuaBackend : public scientool::repl::IReplBackend {
    public:
        LuaBackend() {}

        std::string evaluate(const std::string& code) override ;

    private:

    };
}

