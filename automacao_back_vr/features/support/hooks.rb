Before do
  @request = ExecutorRequisicao.new
end

After do |scn|
  binding.pry if scn.failed? && ENV['debug']
end
