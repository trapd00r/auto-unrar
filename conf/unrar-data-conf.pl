return [
    {
        name => 'test',
        src_dir =>  catdir( $RealBin, '..', '..', 'auto-unrar-data', 'in'  ),
        dest_dir => catdir( $RealBin, '..', '..', 'auto-unrar-data', 'out' ),
        state_fpath =>  catfile( $RealBin, '..', '..', 'auto-unrar-data', 'unrar-data.db' ),
        exclude_list => catfile( $RealBin, '..', '..', 'auto-unrar-data', 'unrar-data-rsync-exclude.txt' ), # --exclude-from=
        basedir_deep => 1,
        recursive => 1,
        remove_done => 1,
        move_non_rars => 1,
        min_dir_mtime => 5*60, # seconds
    },
];