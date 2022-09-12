    <h2>Pelacakan penghapusan</h2>

    <p>Jika pengguna telah menghapus beberapa data pada klien, bagaimana server tahu untuk menghapus catatan database yang sesuai? Salah satu kemungkinannya adalah server harus memeriksa kumpulan data yang masuk, membandingkannya dengan apa yang ada di database, dan menyimpulkan catatan mana yang dihapus. Tapi itu cukup canggung - jauh lebih baik jika klien mengirimkan data yang secara eksplisit menyatakan catatan mana yang dihapus.</p>

    <p>Saat memanipulasi observable array, Anda dapat dengan mudah melacak penghapusan dengan menggunakan fungsi <code>destroy</code> untuk menghapus item.
        Misalnya, perbarui fungsi <code>removeTask</code> anda:</p>

    <pre><code class="javascript" data-result="[object Object]">self.removeTask = <span class="function"><span class="keyword">function</span><span class="params">(task)</span> {</span> self.tasks.<span class="highlight">destroy</span>(task) };
</code></pre>

    <p>Apa fungsinya? Yah, itu tidak lagi benar-benar menghapus instansi <code>Task</code> dari <code>tasks</code> array - sebagai gantinya, itu hanya menambahkan properti <code>_destroy</code>
        ke instance <code>Task</code> dengan nilai. <code>true</code>. Ini sama persis dengan konvensi Ruby on Rails menggunakan <code>_destroy</code> untuk menunjukkan bahwa item yang dikirimkan harus dihapus.
        <code>foreach</code> binding mengetahui hal ini, dan tidak akan menampilkan item apa pun dengan nilai properti itu (itulah sebabnya item menghilang saat dihancurkan).
    </p>

    <h3>Bagaimana server menangani ini?</h3>

    <p>Jika Anda menyimpan data sekarang, Anda akan melihat bahwa server masih menerima item yang dihancurkan, dan server dapat mengetahui item mana yang ingin Anda hapus
        (karena mereka memiliki properti <code>_destroy</code> yang disetel ke <code>true</code>).</p>

    <ul>
        <li>Jika Anda menggunakan fitur parsing JSON otomatis di Rails, ActiveRecord akan mengetahui bahwa Anda ingin menghapus item terkait.</li>
        <li>Untuk teknologi lain, Anda dapat menambahkan sedikit kode sisi server untuk menemukan <code>_destroy</code> dan menghapus item tersebut.</li>
    </ul>

    <p>Jika Anda ingin melihat lebih jelas data apa yang diterima server dalam contoh ini, coba ganti tombol "Save" dengan ajax dengan teknik form-HTML dari langkah 3 dalam tutorial ini.
        .</p>

    <h3>Hei, penghitung tugas saya tidak lagi berfungsi!</h3>

    <p>Perhatikan bahwa keterangan "<em>You have x incomplete task(s)</em>" tidak lagi memfilter item yang dihapus, arena properti <code>incompleteTasks</code> computed
        tidak mengetahui apa pun tentang flag <code>_destroy</code> Perbaiki ini dengan memfilter tugas yang dihancurkan:</p>

    <pre><code class="javascript" data-result="[object Object]">self.incompleteTasks = ko.computed(<span class="function"><span class="keyword">function</span><span class="params">()</span> {</span>
    <span class="keyword">return</span> ko.utils.arrayFilter(self.tasks(), <span class="function"><span class="keyword">function</span><span class="params">(task)</span> {</span> <span class="keyword">return</span> !task.isDone() <span class="highlight">&amp;&amp; !task._destroy</span> });
});
</code></pre>

    <p>Sekarang UI akan secara konsisten melihat <code>_destroy</code>ed tasks tidak ada, meskipun mereka masih dilacak secara internal.</p>
