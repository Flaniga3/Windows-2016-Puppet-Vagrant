Invoke-WebRequest -Uri 'http://downloads.puppetlabs.com/windows/puppet5/puppet-agent-x64-latest.msi' -Outfile C:\Windows\Temp\puppet-installer.msi
Start-Process C:\Windows\Temp\puppet-installer.msi -Wait -ArgumentList "/qn PUPPET_MASTER_SERVER=puppet PUPPET_AGENT_CERTNAME=windows-test-agent-$((Get-Date -Format FileDateTime).ToLower())"
Stop-Service -Name puppet
Add-Content C:\Windows\System32\drivers\etc\hosts "10.0.2.2 puppet"