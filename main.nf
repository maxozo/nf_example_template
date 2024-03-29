#!/usr/bin/env nextflow
/*
========================================================================================
    nf-core/test
========================================================================================
    Github : https://github.com/nf-core/test
    Website: https://nf-co.re/test
    Slack  : https://nfcore.slack.com/channels/test
----------------------------------------------------------------------------------------
*/

nextflow.enable.dsl = 2

/*
========================================================================================
    GENOME PARAMETER VALUES
========================================================================================
*/

// params.fasta = WorkflowMain.getGenomeAttribute(params, 'fasta')

/*
========================================================================================
    VALIDATE & PRINT PARAMETER SUMMARY
========================================================================================
*/

// WorkflowMain.initialise(workflow, params, log)

/*
========================================================================================
    NAMED WORKFLOW FOR PIPELINE
========================================================================================
*/

// include { TEST } from './workflows/test'
include {test_mo519} from './workflows/test_mo519'

//
// WORKFLOW: Run main nf-core/test analysis pipeline
//
workflow {
    test_mo519()
}

/*
========================================================================================
    RUN ALL WORKFLOWS
========================================================================================
*/

//
// WORKFLOW: Execute a single named workflow for the pipeline
// See: https://github.com/nf-core/rnaseq/issues/619
//
// workflow {
//     NFCORE_TEST ()
// }

/*
========================================================================================
    THE END
========================================================================================
*/
