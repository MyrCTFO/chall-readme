#!/usr/bin/env bash

FLAG=$(yq ".flags[0].content" "../challenge.yml")

echo ${FLAG}

<++>
