#include <scientool/repl/ReplEngine.hpp>

namespace scientool::repl {
	struct ReplEngine::Impl {
	    OutputCallback out;
	    // hobbes::context ctx;  

	    Impl(OutputCallback cb) : out(std::move(cb)) {
		// init Hobbes context, load stdlib, etc.
	    }

	    void eval(const std::string& code) {
		// Pseudocode – adapt to Hobbes API:
		// auto result = ctx.eval(code);
		// out(result.toString());
	    }
	};

	ReplEngine::ReplEngine(OutputCallback out)
	    : impl_(new Impl(std::move(out))) {}

	ReplEngine::~ReplEngine() {
	    delete impl_;
	}

	void ReplEngine::evalLine(const std::string& code) {
	    impl_->eval(code);
	}
}
