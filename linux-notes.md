# Linux notes

- zip file while showing the progress of process
  ```
  zip -qr - [folder] | pv -bep -s $(du -bs [folder] | awk '{print $1}') > [file.zip]
  ```
