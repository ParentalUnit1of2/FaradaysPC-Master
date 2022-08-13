<?php echo $header; ?>

<div class="module_language_editor_page">

    <div class='page_help_block'><?php echo $page_help_link; ?></div>

    <h1><?php echo $lang_heading; ?></h1>

    <hr>

    <?php if ($success) { ?>
        <div class="success"><?php echo $success; ?></div>
    <?php } ?>

    <?php if ($info) { ?>
        <div class="info"><?php echo $info; ?></div>
    <?php } ?>

    <?php if ($error) { ?>
        <div class="error"><?php echo $error; ?></div>
    <?php } ?>

    <?php if ($warning) { ?>
        <div class="warning"><?php echo $warning; ?></div>
    <?php } ?>

    <div class="description"><?php echo $lang_description; ?></div>

    <form action="index.php?route=module/language_editor" class="controls" method="post">
        <div class="table_container">
            <table class="table">
                <thead>
                    <tr>
                        <th><?php echo $lang_column_key; ?></th>
                        <th><?php echo $lang_column_text; ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php if ($results) { ?>
                        <?php foreach ($results as $result) { ?>
                            <tr>
                                <td data-th="<?php echo $lang_column_key; ?>:"><?php echo $result['key']; ?></td>
                                <?php if (!empty($result['custom'])) { ?>
                                    <td data-th="<?php echo $lang_column_text; ?>:" class="text_value"><input name="<?php echo $result['key']; ?>" type="text" value="<?php echo $result['custom']; ?>"></td>
                                <?php } else { ?>
                                    <td data-th="<?php echo $lang_column_text; ?>:" class="text_value"><?php echo $result['text']; ?></td>
                                <?php } ?>
                            </tr>
                        <?php } ?>
                    <?php } else { ?>
                        <tr>
                            <td class="no_results" colspan="2"><?php echo $lang_text_no_results; ?></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>

        <input type="hidden" name="csrf_key" value="<?php echo $csrf_key; ?>">

        <p><input type="submit" class="button" value="<?php echo $lang_button_update; ?>" title="<?php echo $lang_button_update; ?>"></p>

        <div class="links"><a href="<?php echo $link_back; ?>"><?php echo $lang_link_back; ?></a></div>        
    </form>

</div>

<?php echo $footer; ?>