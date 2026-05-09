#!/bin/bash

  echo "Running tests..."

  PASS=0
  FAIL=0

  # Test 1
  if [ $((2 + 2)) -eq 45 ]; then
      echo "✓ Test 1 passed: math works"
      PASS=$((PASS + 1))
  else
      echo "✗ Test 1 failed"
      FAIL=$((FAIL + 1))
  fi

  # Test 2
  if [ -f "greet.sh" ]; then
      echo "✓ Test 2 passed: greet.sh exists"
      PASS=$((PASS + 1))
  else
      echo "✗ Test 2 failed: greet.sh not found"
      FAIL=$((FAIL + 1))
  fi

  # Test 3
  if [ -f "Jenkinsfile" ]; then
      echo "✓ Test 3 passed: Jenkinsfile exists"
      PASS=$((PASS + 1))
  else
      echo "✗ Test 3 failed: Jenkinsfile not found"
      FAIL=$((FAIL + 1))
  fi

  echo ""
  echo "Results: $PASS passed, $FAIL failed"

  if [ $FAIL -gt 0 ]; then
      echo "BUILD FAILED"
      exit 1
  fi

  echo "ALL TESTS PASSED"
