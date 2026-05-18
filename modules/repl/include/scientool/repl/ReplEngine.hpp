#pragma once

#include <string>
#include <functional>

namespace scientool::repl {

	class ReplEngine {
	public:
		using OutputCallback = std::function<void(const std::string&)>;

		explicit ReplEngine(OutputCallback out);
		~ReplEngine();

		void evalLine(const std::string& code);

	private:
		struct Impl;
		Impl* impl_;
	};
}
