powershell -Command "(gc Directory.build.props) -replace '<TargetsToBuildDeveloperOverride>[a-zA-Z]*</TargetsToBuildDeveloperOverride>', '<TargetsToBuildDeveloperOverride>%~1</TargetsToBuildDeveloperOverride> ' | Out-File -encoding ASCII Directory.build.props"
start MultiTargetingWithUno.%~1.slnf
