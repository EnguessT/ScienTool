#pragma once

#include <string>

namespace scientool::repl {

	class IReplBackend {
	public:
		virtual ~IReplBackend() = default;
		virtual std::string evaluate(const std::string& code) = 0;
	};

}
