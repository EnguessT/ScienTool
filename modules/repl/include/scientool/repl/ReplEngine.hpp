#pragma once

#include <memory>
#include <utility>
#include <scientool/repl/IReplBackend.hpp>

namespace scientool::repl {

	class ReplEngine {
	public:
		void setBackend(std::unique_ptr<IReplBackend> b) {
		    backend = std::move(b);
		}

		std::string evaluate(const std::string& code) {
		    return backend->evaluate(code);
		}

	private:
		std::unique_ptr<IReplBackend> backend;
	};

}
