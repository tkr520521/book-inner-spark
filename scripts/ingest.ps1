# Book Inner — 书籍摄入辅助脚本

# 用法: 将书籍内容传到标准输入，脚本输出结构化思维模型
# 或直接由 AI agent 遵循 SKILL.md 中的模板处理

Write-Host "Book Inner — 书籍摄入工具"
Write-Host "=============================="
Write-Host ""
Write-Host "请将书籍内容粘贴到下方（支持文本/笔记/章节要点）"
Write-Host "输入完成后，按 Ctrl+Z 然后回车结束。"
Write-Host ""

$bookContent = @()
try {
    while ($line = Read-Host) {
        $bookContent += $line
    }
} catch {
    # EOF or Ctrl+Z
}

if ($bookContent.Count -eq 0) {
    Write-Host "没有接收到内容。"
    Write-Host ""
    Write-Host "使用方法："
    Write-Host "  1. 直接将书籍内容传入：Get-Content book.txt | python ingest_helper.py"
    Write-Host "  2. 或使用 AI agent 手动处理：遵循 SKILL.md 中的模板"
    exit
}

$bookName = $bookContent[0]
if ($bookName.Length -gt 100) {
    $bookName = $bookName.Substring(0, 60) + "..."
}

Write-Host ""
Write-Host "收到内容长度: $($bookContent.Count) 行"
Write-Host "书名检测: $bookName"
Write-Host ""
Write-Host "下一步: AI agent 将会根据 SKILL.md 中的模板"
Write-Host "从内容中提取：核心原理 → 心智模型 → 偏见纠正 → 决策规则 → 黄金问题"
Write-Host ""
Write-Host "处理结果将保存至 books/ 目录"
