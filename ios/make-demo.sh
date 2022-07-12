{\rtf1\ansi\ansicpg936\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 .AppleSystemUIFontMonospaced-Regular;}
{\colortbl;\red255\green255\blue255;\red27\green31\blue35;}
{\*\expandedcolortbl;;\cssrgb\c14118\c16078\c18431;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl348\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2  installer.pods_project.targets.each do |target|\
    target.build_configurations.each do |config|\
      config.build_settings['ENABLE_BITCODE'] = 'NO'\
    end\
  end\
}