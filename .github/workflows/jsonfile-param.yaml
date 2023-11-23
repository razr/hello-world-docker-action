# This is a workflow for the VxWorks ROS 2 build.
# It builds a ROS 2 VxWorks port against the VxWorks SDK 
#
# The workflow can be started 
#  - manually

name: 'VxWorks ROS 2 build'

on:
  workflow_dispatch:
    inputs:
      json_file_name:
        description: 'Name of the JSON file'
        required: true
        default: 'vxros2build.json'
jobs:
  build:
    strategy:
      matrix:
        ros_distro: [humble, iron, rolling]

    runs-on: ubuntu-22.04
    env:
      JSON_FILE: ${{ github.event.inputs.json_file_name }}
    continue-on-error: true
    steps:

      - name: Checks-out a branch ${{ github.ref }}
        uses: actions/checkout@v3
        with:
          ref: ${{ github.ref }}

      - name: Setup environment
        run: |
          echo "url=`jq -r '[.vxros2build[] | select(.ros_distro == \"${{ matrix.ros_distro }}\") | {url} | .url][0]' ./.github/workflows/${{ env.JSON_FILE }}`" >> $GITHUB_ENV
          echo "script=`jq -r '[.vxros2build[] | select(.ros_distro == \"${{ matrix.ros_distro }}\") | {script} | .script][0]' ./.github/workflows/${{ env.JSON_FILE }}`" >> $GITHUB_ENV
          echo "image=`jq -r '[.vxros2build[] | select(.ros_distro == \"${{ matrix.ros_distro }}\") | {image} | .image][0]' ./.github/workflows/${{ env.JSON_FILE }}`" >> $GITHUB_ENV
          echo "ros_distro=`echo ${{ matrix.ros_distro }}`" >> $GITHUB_ENV

      - name: Download the ${{ matrix.sdk }} SDK
        uses: carlosperate/download-file-action@v1
        with:
          file-url: '${{ env.url }}'
          location: '/tmp'
