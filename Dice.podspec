Pod::Spec.new do |s|
  s.name         = 'Dice'
  s.version      = '0.1.0'
  s.summary      = 'Dice'
  s.description  = <<-DESC
                   Dice
                   DESC
  s.homepage     = 'https://github.com/Overfeed/Dice'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'jasonnam' => 'contact@jasonnam.com' }

  s.source       = { :path => '.' }
  s.source_files = 'Sources/Dice/**/*.{swift}'
end
