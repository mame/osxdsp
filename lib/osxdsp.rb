class OSXDsp
  VERSION = "0.0.1"
end

module Kernel
  private
  alias osxdsp_orig_open open
  class << self
    alias osxdsp_orig_open open
  end
  def open(name, *rest, &block)
    if name == "/dev/dsp"
      IO.popen(%w(sox -q -traw -r8000 -b8 -e unsigned-integer --input-buffer 64 - -d), *rest, &block)
    else
      osxdsp_orig_open(name, *rest, &block)
    end
  end
  module_function :open
end
