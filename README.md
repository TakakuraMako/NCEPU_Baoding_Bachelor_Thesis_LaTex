# NCEPU-thesis 华北电力大学学位论文模板

此项目为非官方的华北电力大学（保定）学位论文的Latex模板(文档类)。本模板是[鹰仓茉子](https://github.com/TakakuraMako/)基于由[obster-y](https://github.com/obster-y)编写的[模板](https://github.com/obster-y/NCEPU-thesis)修改并完善的。

## 注意事项
- 本项目**不是**官方模板，并且只能生成PDF文件，如果想要获得DOC文档只能进行二次转换。
- 本项目**未受到**任何形式的任何资助。
- 本项目是**学士学位**论文的排版。

## 使用方法

### 基本环境

使用模板需要系统安装一种TeX环境，如[TeXLive](http://mirror.ctan.org/systems/texlive/Images/)（不推荐CTeX），安装有 SimSun 和 SimHei 字体（其实就是宋体和黑体）以及 Times New Roman 英文字体。在 MacOS 系统下编译会自动识别操作系统，使用 Songti SC 和 STHeiti 字体，但需要启用`--shell-escape`编译选项。Linux如果出现字体问题，需要下载放在与主tex文件同一路径下。

模板采用LaTeX类的形式封装，导入模板只需要把`NCEPU-thesis.cls`文件放在文档所在目录，在文档开头使用`\documentclass{NCEPU-thesis}`命令将文档的类设置成`NCEPU-thesis`即可。

模板类仅支持`bachelor`（学士学位论文）。文档内容的书写参考范例`main_singlefile.tex`。

### 工程结构

文件夹
- Figures: 放置正文使用的图片
- Reference: 放置参考文献数据库文件(.bib)
- Thesis_Materials: 放置模板相关资源，校方规定，参考文献样式、字体等

文件
- main.tex: 主文件
- NCEPU-thesis.cls: 文档类
- README.md: 本文档

### 文档编译

建议编译顺序：xelatex->bibtex->xelatex->xelatex

## 论文写作指南

### 论文封面

论文封面和扉页由`\makecover`命令添加，可显示论文题目、作者、指导老师等信息。但正式提交论文时教务处会统一提供封面和扉页，无论自己排版的封面是否符合格式要求。已经包含的封面也不会影响任何前期的审核。独创性声明可以由`\originalitydeclaration`命令生成。

如果想使用自己定义的封面，可以用`\bindpdfcover`命令添加已经做好的PDF格式的封面，如`\bindpdfcover{cover.pdf}`。

### 中英文摘要

中英文摘要应包含在`chineseabstract`和`englishabstract`环境中，对应的关键字使用`\chinesekeyword`和`\englishkeyword`命令添加，并包含在相应的环境中。模板自动设置页眉和页脚。

### 论文目录

论文目录由命令`\thesistableofcontents`添加，并且自动处理标题，页眉以及缩进等问题。

### 论文主体

论文主体的写作参考一般的LaTeX教程，可以自由添加章节，章节内添加所需要的内容，分小节，插入公式、表格和图片。

### 数学环境

数学环境的字体加粗可以使用`\mathbf`或者`\bm`命令，使用斜体粗体的符号。由于 Times New Roman 字体的拉丁字母字形修长，偶尔会出现字符粘连的情况。这种情况下可以使用占位符波浪号调整距离，如`$f^{~l}$`和`$\hat{f~}$`。

### 图片

模板已经将`Figures/`路径加入考虑，可以直接将图片放在其下，容易整理，工程也看起来清爽。

### 致谢

致谢部分由命令`\thesisacknowledgement`开始，实际上是开始了一个无编号的章节。

### 参考文献

使用BibTeX录入参考文献由`\bibliography`命令导入`Reference/*.bib`文件数据库，参考文献风格依照标准设置为`GBT7714-2015`。

在这个命令之前使用`\nocite{*}`命令会在文档中列出数据库中的所有条目，无论是否引用；其他情况下只列出引用过的条目。有些编辑器会识别`\bibliography`命令导入的数据库文件，并提供更好的编辑支持，所以模板也支持原生的`\bibliography`命令导入文献列表，只需要导入之前指定参考文献风格（`\bibliographystyle`）即可。

参考文献的在文中的引用分两种：在原文中作句法成分的为直接引用，使用`\cite`命令，否则为`\citing`命令，在文中文献编号显示为上标。模版的文献条目处理兼容 IEEE Xplore 和 ScienceDirect 的引用格式，还有其他主流的数据库。获得参考文献条目信息只需要在对应的文章页面点击下载引用的按钮（在 IEEE Xplore 中按钮在PDF下载旁边一个向下的箭头；在 ScienceDirect 中为文章标题上面的 Export 链接），选择BibTeX格式，将文本复制到 bib 文件即可。

当引用中文文献，而文献作者超过三位时，后面的作者想使用“等”字省略，可以在文章条目添加语言选项`language = {zh}`。模版会自动按照中文的习惯处理作者信息。

### 附录

附录部分由命令`\thesisappendix`开始，之后每一章都会被当作是一个附录，使用大写拉丁字母编号。如果只需要单独一个附录则使用`\thesissingleappendix`命令，在后面添加小节，附录本身没有编号。


### 外文资料原文及译文

本科毕业论文要求翻译一篇外文资料，资料原文应由命令`\thesistranslationoriginal`开始，资料译文由命`\thesistranslationchinese`开始。为了书写方便可以继续分小节，但是这部分中的小节不会在目录中显示。

### 插入图片和表格

插入图片使用`figure`环境，自动调整图片前后的间距，添加子图则使用`\subfloat`命令。若子图过多需要跨页则在间断处插入`\floatcontinue`命令。插入表格使用`table`环境，自动调整表格前后的间距和默认的字体大小。

图片文件可以统一放在`./Figure`目录下。具体插入图片和表格的代码参考范例`main_singlefile.tex`。

### 定理环境

数学定理请使用模板提供的定义（definition）、公理（axiom）、证明（proof）、定理（theorem）、推论（corollary）、命题（proposition）、引理（lemma）和例子（example）环境。

### 算法描述

算法描述使用`algorithm`环境，具体写法请参考范例`main_singlefile.tex`或`Main_Spine\c3.tex`。模板类自动加载`algorithm2e`宏包，详细的用法请参考[algorithm2e宏包文档](https://www.ctan.org/pkg/algorithm2e)。

### 枚举环境和脚注

枚举使用标准的`enumerate`、`itemize`以及`description`环境。脚注使用标准的`\footnote`命令插入。

### 其他命令
模版提供一些有用的命令方便论文写作，其中包含一些常见的中文字符：

| 命令名称 | 字符 | Unicode 编号|
|---|---|---|
|\chinesecolon| ： | FF1A |
|\chinesespace|    | 3000 |
|\chineseperiod| 。| 3002 |
|\chinesequestion| ？  | FF1F |
|\chineseexclamation| ！  | FF01 |
|\chinesecomma| ，  | FF0C |
|\chinesesemicolon|  ； | FF1B |
|\chineseleftparenthesis|（ | FF08 |
|\chineserightparenthesis| ）| FF09 |

另外`\blankpage`命令可以强制生成一页空白。

### 分割文件

模板提供的样例（`main_singlefile.tex`）将所有内容写在同一个文档里，使用者认为必要可以将各个章节写在不同的子文件内，使用`\input`命令统一包含。

其中每个文件对应独立的章、摘要、致谢等。分割的文件使用`\input`命令包含到主文档内（参见`main_multifile.tex`）。所有需要使用的宏包在主文件中导入，编译方法保持不变。

