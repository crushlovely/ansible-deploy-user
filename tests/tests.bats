#!/usr/bin/env bats

@test "Check that the group exists" {
    id -g $EXPECTED_GROUP
}

@test "Check that a sudoers.d file with the right content exists for the user" {
    run sudo cat /etc/sudoers.d/$EXPECTED_USER
    [ $status -eq 0 ]
    [ $output = "%$EXPECTED_USER ALL=(ALL) NOPASSWD:ALL" ]
}

@test "Check that the user exists" {
    id $EXPECTED_USER
}

@test "Check that tmp is owned by the right user" {
    ls -l / | grep tmp | awk '{print $3 $4}' | grep -q "$EXPECTED_TMP_OWNER$EXPECTED_TMP_OWNER"
}
