D = Steep::Diagnostic

target :lib do
  signature "sig/generated"
  check "lib"
  configure_code_diagnostics do |hash|
    hash[D::Ruby::MethodDefinitionMissing] = :warning
    hash[D::Ruby::UnknownConstant] = :information
  end
end