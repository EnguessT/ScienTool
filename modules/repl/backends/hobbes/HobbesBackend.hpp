#pragma once

#include <string>
#include <hobbes/hobbes.H>
#include <scientool/repl/IReplBackend.hpp>

namespace scientool::repl {

	class HobbesBackend : public scientool::repl::IReplBackend {
	public:
	    HobbesBackend() : c() {}

	   std::string evaluate(const std::string& code) override {
		    try {
		        return c.eval<std::string>(code);
		    } catch (const std::exception& e) {
		        return std::string("Hobbes error: ") + e.what();
		    }
	    }

	private:
	    hobbes::cc c;
	};
}
