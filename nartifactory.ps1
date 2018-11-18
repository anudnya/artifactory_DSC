Start-BitsTransfer -Source "https://sonatype-download.global.ssl.fastly.net/repository/repositoryManager/3/nexus-3.14.0-04-win64.zip" -Destination "D:\"
  Add-Type -AssemblyName System.IO.Compression.FileSystem
  function unzip {
   param( [string]$ziparchive, [string]$extractpath )
   [System.IO.Compression.ZipFile]::ExtractToDirectory( $ziparchive, $extractpath )
    }
  unzip "D:\nexus-3.14.0-04-win64.zip" "D:\"

  D:\nexus-3.14.0-04\bin\nexus.exe start
