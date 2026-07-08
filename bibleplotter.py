import xml.etree.ElementTree as ET
import matplotlib.pyplot as plt

# ------------------------------
# FILE PATH
# ------------------------------

file_path = "ntgreek.gexf"

# ------------------------------
# NT CANONICAL BOOK ORDER
# ------------------------------

book_order = [
    "Matthew","Mark","Luke","John","Acts","Romans",
    "1 Corinthians","2 Corinthians","Galatians","Ephesians",
    "Philippians","Colossians","1 Thessalonians","2 Thessalonians",
    "1 Timothy","2 Timothy","Titus","Philemon","Hebrews",
    "James","1 Peter","2 Peter","1 John","2 John","3 John",
    "Jude","Revelation"
]

# Create index lookup
book_index_lookup = {name: i+1 for i,name in enumerate(book_order)}

# ------------------------------
# PARSE XML
# ------------------------------

tree = ET.parse(file_path)
root = tree.getroot()

ns = {"g":"http://www.gexf.net/1.3"}

nodes = root.find("g:graph/g:nodes", ns)

# ------------------------------
# STORAGE
# ------------------------------

x_index = []
num_chapters = []
avg_date = []
num_hits = []
love_den = []
agape_ratio = []
philia_ratio = []

labels = []

# ------------------------------
# EXTRACT DATA
# ------------------------------

for node in nodes.findall("g:node", ns):

    label = node.get("label")

    if label not in book_index_lookup:
        continue

    idx = book_index_lookup[label]

    attributes = {
        "num_chapters":0,
        "avg_date":0,
        "num_hits":0,
        "love_den":0,
        "agape_ratio":0,
        "philia_ratio":0
    }

    attvalues = node.find("g:attvalues", ns)

    if attvalues is not None:
        for att in attvalues.findall("g:attvalue", ns):

            key = att.get("for")
            value = float(att.get("value"))

            if key in attributes:
                attributes[key] = value

    x_index.append(idx)
    labels.append(label)

    num_chapters.append(attributes["num_chapters"])
    avg_date.append(attributes["avg_date"])
    num_hits.append(attributes["num_hits"])
    love_den.append(attributes["love_den"])
    agape_ratio.append(attributes["agape_ratio"])
    philia_ratio.append(attributes["philia_ratio"])

# ------------------------------
# SORT BY BOOK INDEX
# ------------------------------

combined = list(zip(
    x_index, labels, num_chapters, avg_date,
    num_hits, love_den, agape_ratio, philia_ratio
))

combined.sort(key=lambda x: x[0])

x_index, labels, num_chapters, avg_date, num_hits, love_den, agape_ratio, philia_ratio = zip(*combined)

# ------------------------------
# PLOT
# ------------------------------

plt.figure(figsize=(14,8))

plt.plot(x_index, num_chapters, marker="o", label="Number of Chapters")
plt.plot(x_index, avg_date, marker="s", label="Average Date Written")
plt.plot(x_index, num_hits, marker="^", label="Number of times love occurs")
plt.plot(x_index, love_den, marker="d", label="Love Density")
plt.plot(x_index, agape_ratio, marker="o", label="Agape Ratio")
plt.plot(x_index, philia_ratio, marker="o", label="Philia Ratio")

plt.xticks(x_index, labels, rotation=90)

plt.xlabel("New Testament Book Index")
plt.ylabel("Attribute Value")
plt.title("New Testament Love Metrics by Book")

plt.grid(True)
plt.legend()

plt.tight_layout()
plt.show()
