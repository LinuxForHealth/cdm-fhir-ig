module.exports = {
    "dataSource": "issues",
    "prefix": "",
    "ignoreLabels": ["duplicate", "help wanted", "good first issue", "invalid", "question", "wontfix", "spike"],
    "ignoreIssuesWith": ["duplicate", "help wanted", "good first issue", "invalid", "question", "wontfix", "spike"],
    "onlyMilestones": false,
    "changelogFilename": "data/ig-data/input/pagecontent/history.md",
    "groupBy": {
        "BREAKING CHANGES 💔": ["breaking change", "breaking"],
        "FEATURES ⭐️": ["enhancement", "feature", "ig profiling"],
        "BUG FIXES 🕸": ["bug", "bug fix"],
        "DOCUMENTATION 📚 ": ["documentation", "typo"],
        "OTHER CHANGES": ["..."]    
    },
    "template": {
        commit: ({ message, url, author, name }) => `- [${message}](${url}) - ${author ? `@${author}` : name}`,
        issue: "- {{name}} [{{text}}]({{url}})",
        label: "[**{{label}}**]",
        noLabel: "bug",
        group: "\n#### {{heading}}\n",
        changelogTitle: "## Release Notes\n\n",
        release_old: "## {{release}} ({{date}})\n{{body}}",
        release: function (placeholders,body) {
            var parts = placeholders.date.split("/");
            var newDate = new Date(parseInt(parts[2], 10),
                              parseInt(parts[1], 10) - 1,
                              parseInt(parts[0], 10));
            var formattedDate = (newDate.getFullYear() >= 1970) ? newDate.toLocaleDateString("us-en") : "(DRAFT)";
            return `## ${placeholders.release} ${formattedDate}\n${placeholders.body}`
        },
        releaseSeparator: "\n---\n\n"
    }    
}