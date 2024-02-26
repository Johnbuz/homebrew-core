{\rtf1\ansi\ansicpg1251\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 class CodeBuddy < Formula\
  desc "\uc0\u1048 \u1085 \u1089 \u1090 \u1088 \u1091 \u1084 \u1077 \u1085 \u1090  \u1076 \u1083 \u1103  \u1086 \u1073 \u1084 \u1077 \u1085 \u1072  \u1082 \u1086 \u1076 \u1086 \u1084  \u1080  \u1082 \u1086 \u1083 \u1083 \u1072 \u1073 \u1086 \u1088 \u1072 \u1094 \u1080 \u1080 "\
  homepage "https://example.com/codebuddy"\
  url "https://example.com/codebuddy/archive/v1.0.0.tar.gz"\
  sha256 "abcdef1234567890abcdef1234567890" # \uc0\u1061 \u1101 \u1096 -\u1089 \u1091 \u1084 \u1084 \u1072  \u1072 \u1088 \u1093 \u1080 \u1074 \u1072 \
  license "MIT"\
\
  depends_on "cmake" => :build\
  depends_on "qt@5"\
\
  def install\
    system "cmake", ".", *std_cmake_args\
    system "make", "install"\
  end\
\
  test do\
    # \uc0\u1055 \u1088 \u1086 \u1074 \u1077 \u1088 \u1082 \u1080 \
    system "#\{bin\}/codebuddy", "--version"\
  end\
end\
}