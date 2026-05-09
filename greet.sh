 #!/bin/bash

  NAME="Jenkins Demo"
  DATE=$(date)

  echo "=============================="
  echo "  Hello from $NAME!"
  echo "  Run at: $DATE"
  echo "=============================="

  # Simulate some work
  for i in 1 2 3; do
      echo "Processing step $i..."
      sleep 1
  done

  echo "All done!"
