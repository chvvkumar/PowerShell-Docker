# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

# return objects representing the tags we need to base the xenial image on

# The versions of xenial we care about
$shortTags = @('3.8')

$parent = Join-Path -Path $PSScriptRoot -ChildPath '..'
$repoRoot = Join-Path -path (Join-Path -Path $parent -ChildPath '..') -ChildPath '..'
$modulePath = Join-Path -Path $repoRoot -ChildPath 'tools\getDockerTags'
Import-Module $modulePath

Get-DockerTags -ShortTags $shortTags -Image "alpine" -FullTagFilter '^3.8$' -OnlyShortTags
