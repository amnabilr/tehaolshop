</div>

</div>
</div>

</div>

<footer class="main-footer">

    <div class="float-right d-none d-sm-inline">
        Anything you want
    </div>

    <strong>Copyright &copy; 2022 <a href="https://adminlte.io">Teha-Olshop</a>.</strong> All rights reserved.
</footer>
</div>

<script>
    $(function() {
        $("#example1").DataTable({
            "responsive": true,
            "autoWidth": false,
        });
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
        });
    });
</script>
<script>
    window.setTimeout(function() {
        $(".alert").fadeTo(500, 0).slideUp(500, function() {
            $(this).remove();
        });
    }, 3000)
</script>
</body>

</html>