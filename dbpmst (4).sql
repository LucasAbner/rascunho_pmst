-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Ago-2021 às 15:06
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbpmst`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `associated_id` varchar(10) DEFAULT NULL,
  `project_phase` varchar(20) DEFAULT NULL,
  `milestone` varchar(20) DEFAULT NULL,
  `activity_name` varchar(100) DEFAULT NULL,
  `predecessor_activity` varchar(100) DEFAULT NULL,
  `dependence_type` varchar(100) DEFAULT NULL,
  `anticipation` varchar(100) DEFAULT NULL,
  `wait` varchar(100) DEFAULT NULL,
  `resource_description` varchar(100) DEFAULT NULL,
  `required_amount_of_resource` int(11) DEFAULT NULL,
  `resource_cost_per_unit` decimal(11,2) DEFAULT NULL,
  `resource_type` varchar(100) DEFAULT NULL,
  `resource_name` varchar(200) DEFAULT NULL,
  `function` varchar(100) DEFAULT NULL,
  `availability_start` date DEFAULT NULL,
  `availability_ends` date DEFAULT NULL,
  `allocation_start` date DEFAULT NULL,
  `allocation_ends` date DEFAULT NULL,
  `estimated_duration` decimal(11,2) DEFAULT NULL,
  `replanted_duration` decimal(11,2) DEFAULT NULL,
  `performed_duration` decimal(11,2) DEFAULT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `replanted_start_date` date DEFAULT NULL,
  `performed_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `replanted_end_date` date DEFAULT NULL,
  `performed_end_date` date DEFAULT NULL,
  `estimated_cost` decimal(11,2) DEFAULT NULL,
  `cumulative_estimated_cost` decimal(11,2) DEFAULT NULL,
  `replanted_cost` decimal(11,2) DEFAULT NULL,
  `contingency_reserve` decimal(11,2) DEFAULT NULL,
  `sum_of_work_packages` decimal(11,2) DEFAULT NULL,
  `contingency_reserve_of_packages` decimal(11,2) DEFAULT NULL,
  `baseline` decimal(11,2) DEFAULT NULL,
  `budget` decimal(11,2) DEFAULT NULL,
  `cumulative_replanted_cost` decimal(11,2) DEFAULT NULL,
  `real_cost` decimal(11,2) DEFAULT NULL,
  `cumulative_real_cost` decimal(11,2) DEFAULT NULL,
  `estimated_completed` decimal(11,2) DEFAULT NULL,
  `replanted_completed` decimal(11,2) DEFAULT NULL,
  `real_completed` decimal(11,2) DEFAULT NULL,
  `agregate_value` decimal(11,2) DEFAULT NULL,
  `planned_value` decimal(11,2) DEFAULT NULL,
  `real_agregate_cost` decimal(11,2) DEFAULT NULL,
  `variation_of_terms` decimal(11,2) DEFAULT NULL,
  `variation_of_costs` decimal(11,2) DEFAULT NULL,
  `deadline_performance_index` decimal(11,2) DEFAULT NULL,
  `costs_performance_index` decimal(11,2) DEFAULT NULL,
  `estimated_of_completation` decimal(11,2) DEFAULT NULL,
  `duration_pessimistic` decimal(11,2) DEFAULT NULL,
  `duration_probable` decimal(11,2) DEFAULT NULL,
  `duration_otimistic` decimal(11,2) DEFAULT NULL,
  `duration_beta` decimal(11,2) DEFAULT NULL,
  `duration_triangular` decimal(11,2) DEFAULT NULL,
  `cost_pessimistic` decimal(11,2) DEFAULT NULL,
  `cost_probable` decimal(11,2) DEFAULT NULL,
  `cost_otimistic` decimal(11,2) DEFAULT NULL,
  `cost_beta` decimal(11,2) DEFAULT NULL,
  `cost_triangular` decimal(11,2) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `budget_at_cumulative_end` decimal(11,2) DEFAULT NULL,
  `variation_at_the_end` decimal(11,2) DEFAULT NULL,
  `estimate_for_completion` decimal(11,2) DEFAULT NULL,
  `wbs_id` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `reserve` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexo`
--

CREATE TABLE `anexo` (
  `anexo_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `view_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_name` varchar(55) DEFAULT NULL,
  `path` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `assumption_log`
--

CREATE TABLE `assumption_log` (
  `assumption_log_id` int(11) NOT NULL,
  `description_log` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `benefits_plan`
--

CREATE TABLE `benefits_plan` (
  `benefits_plan_id` int(11) NOT NULL,
  `target_benefits` varchar(1000) DEFAULT NULL,
  `strategic_alignment` varchar(1000) DEFAULT NULL,
  `schedule_benefit` varchar(1000) DEFAULT NULL,
  `benefits_owner` varchar(1000) DEFAULT NULL,
  `indicators` varchar(1000) DEFAULT NULL,
  `premises` varchar(1000) DEFAULT NULL,
  `risks` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `business_case`
--

CREATE TABLE `business_case` (
  `business_case_id` int(11) NOT NULL,
  `business_deals` varchar(1000) DEFAULT NULL,
  `situation_analysis` varchar(1000) DEFAULT NULL,
  `recommendation` varchar(1000) DEFAULT NULL,
  `evaluation` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `change_log`
--

CREATE TABLE `change_log` (
  `change_log_id` int(11) NOT NULL,
  `id_number` varchar(1000) DEFAULT NULL,
  `requester` varchar(1000) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `change_type` varchar(1000) DEFAULT NULL,
  `situation` varchar(1000) DEFAULT NULL,
  `change_description` varchar(1000) DEFAULT NULL,
  `project_management_feedback` varchar(1000) DEFAULT NULL,
  `ccc_feedback` varchar(1000) DEFAULT NULL,
  `ccc_feedback_date` date DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `change_request`
--

CREATE TABLE `change_request` (
  `id` int(11) NOT NULL,
  `requester` varchar(10000) DEFAULT NULL,
  `number_id` int(11) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `impacted_areas` text DEFAULT NULL,
  `impacted_docs` text DEFAULT NULL,
  `justification` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `manager_opinion` text DEFAULT NULL,
  `committee_opinion` text DEFAULT NULL,
  `status` varchar(1000) DEFAULT NULL,
  `committee_date` date DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `log` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `id` int(30) NOT NULL,
  `sender_id` int(30) NOT NULL,
  `receiver_id` int(30) NOT NULL,
  `message` text NOT NULL,
  `message_date_time` text NOT NULL,
  `ip_address` text NOT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `closed_procurement_documentation`
--

CREATE TABLE `closed_procurement_documentation` (
  `closed_procurement_documentation_id` int(11) NOT NULL,
  `closing_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `supplier_representative` int(11) NOT NULL,
  `provider` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `communication_item`
--

CREATE TABLE `communication_item` (
  `communication_item_id` int(11) NOT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `distribution_reason` varchar(1000) DEFAULT NULL,
  `language` varchar(1000) DEFAULT NULL,
  `channel` varchar(1000) DEFAULT NULL,
  `document_format` varchar(1000) DEFAULT NULL,
  `method` varchar(1000) DEFAULT NULL,
  `frequency` varchar(1000) DEFAULT NULL,
  `allocated_resources` varchar(1000) DEFAULT NULL,
  `format` varchar(1000) DEFAULT NULL,
  `local` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `communication_responsability`
--

CREATE TABLE `communication_responsability` (
  `communication_responsability_id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `initials` varchar(1000) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='communication_type';

-- --------------------------------------------------------

--
-- Estrutura da tabela `communication_stakeholder_responsability`
--

CREATE TABLE `communication_stakeholder_responsability` (
  `communication_item_id` int(11) NOT NULL,
  `communication_responsability_id` int(11) NOT NULL,
  `stakeholder_id` int(11) NOT NULL,
  `communication_item_responsability_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cost_mp`
--

CREATE TABLE `cost_mp` (
  `cost_mp_id` int(11) NOT NULL,
  `project_costs_m` varchar(1000) DEFAULT NULL,
  `accuracy_level` text DEFAULT NULL,
  `organizational_procedures` varchar(1000) DEFAULT NULL,
  `measurement_rules` text DEFAULT NULL,
  `format_report` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `control_thresholds` text DEFAULT NULL,
  `units_measure` text DEFAULT NULL,
  `precision_level` text DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `delivery_acceptance_term`
--

CREATE TABLE `delivery_acceptance_term` (
  `id` int(11) NOT NULL,
  `validator_name` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `function` varchar(200) DEFAULT NULL,
  `validation_date` date DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `duration_estimates`
--

CREATE TABLE `duration_estimates` (
  `duration_estimates_id` int(11) NOT NULL,
  `estimated_duration` int(11) DEFAULT NULL,
  `performed_duration` int(11) DEFAULT NULL,
  `estimated_start_date` date DEFAULT NULL,
  `performed_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `performed_end_date` date NOT NULL,
  `status` int(11) DEFAULT NULL,
  `version` text DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `field`
--

CREATE TABLE `field` (
  `field_id` int(11) NOT NULL,
  `view_id` int(11) NOT NULL,
  `field_name` varchar(55) DEFAULT NULL,
  `field_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `final_report`
--

CREATE TABLE `final_report` (
  `final_report_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `scope` text DEFAULT NULL,
  `quality_objectives` text DEFAULT NULL,
  `cost_objectives` text DEFAULT NULL,
  `summary_validation` text DEFAULT NULL,
  `schedule_objectives` text DEFAULT NULL,
  `summary_business` text DEFAULT NULL,
  `summary_risks` text DEFAULT NULL,
  `signature_validator` text DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `human_resources_mp`
--

CREATE TABLE `human_resources_mp` (
  `human_resources_mp_id` int(11) NOT NULL,
  `roles_responsibilities` text DEFAULT NULL,
  `organizational_chart` varchar(1000) DEFAULT NULL,
  `staff_mp` text DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `Identification_resources` text DEFAULT NULL,
  `acquiring_resources` text DEFAULT NULL,
  `training` text DEFAULT NULL,
  `team_development` text DEFAULT NULL,
  `control` text DEFAULT NULL,
  `recognition_plan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `issues_record`
--

CREATE TABLE `issues_record` (
  `issues_record_id` int(11) NOT NULL,
  `identification` varchar(1000) DEFAULT NULL,
  `identification_date` date DEFAULT NULL,
  `question_description` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `responsable` varchar(1000) DEFAULT NULL,
  `situation` varchar(1000) DEFAULT NULL,
  `action` varchar(1000) DEFAULT NULL,
  `resolution_date` date DEFAULT NULL,
  `replan_date` date DEFAULT NULL,
  `observations` varchar(1000) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `items_check`
--

CREATE TABLE `items_check` (
  `id` int(11) NOT NULL,
  `items_to_check` varchar(200) DEFAULT NULL,
  `ok` bit(1) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `quality_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `knowledge_area`
--

CREATE TABLE `knowledge_area` (
  `knowledge_area_id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lesson_learned_register`
--

CREATE TABLE `lesson_learned_register` (
  `lesson_learned_register_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `stakeholder` text NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `category` text NOT NULL,
  `interested` text NOT NULL,
  `status` varchar(40) NOT NULL,
  `impact` text NOT NULL,
  `recommendations` text NOT NULL,
  `knowledge_area_id` int(11) NOT NULL,
  `life_cycle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `log_activity`
--

CREATE TABLE `log_activity` (
  `log_activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` text CHARACTER SET latin1 NOT NULL,
  `ip_address` text CHARACTER SET latin1 NOT NULL,
  `action` varchar(200) CHARACTER SET latin1 NOT NULL,
  `action_type` text NOT NULL,
  `view_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `time` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `log_notification`
--

CREATE TABLE `log_notification` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notifications` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `milestone`
--

CREATE TABLE `milestone` (
  `milestone_id` int(11) NOT NULL,
  `milestone` text NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notification_board`
--

CREATE TABLE `notification_board` (
  `notification_board_id` int(11) NOT NULL,
  `running_activities` text DEFAULT NULL,
  `important_activities` text DEFAULT NULL,
  `open_issues` text DEFAULT NULL,
  `changes_approval` text DEFAULT NULL,
  `general_warnings` text DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `process_improvement_plan`
--

CREATE TABLE `process_improvement_plan` (
  `process_improvement_plan_id` int(11) NOT NULL,
  `process_limits` varchar(1000) DEFAULT NULL,
  `process_configuration` varchar(1000) DEFAULT NULL,
  `process_metrics` varchar(1000) DEFAULT NULL,
  `goals_performance_improvement` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `procurement_mp`
--

CREATE TABLE `procurement_mp` (
  `procurement_mp_id` int(11) NOT NULL,
  `products_services_obtained` text DEFAULT NULL,
  `schedule_procurement_activities` text DEFAULT NULL,
  `performance_metrics` text DEFAULT NULL,
  `procurement_management` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `estimates` text DEFAULT NULL,
  `issues` text DEFAULT NULL,
  `sellers` text DEFAULT NULL,
  `strategy` text DEFAULT NULL,
  `legal_jurisdiction` text DEFAULT NULL,
  `constraint_assumption` text DEFAULT NULL,
  `roles` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `procurement_statement_of_work`
--

CREATE TABLE `procurement_statement_of_work` (
  `id` int(11) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `types` varchar(1000) DEFAULT NULL,
  `selection_criterias` varchar(1000) DEFAULT NULL,
  `restrictions` varchar(1000) DEFAULT NULL,
  `premises` varchar(1000) DEFAULT NULL,
  `schedule` varchar(1000) DEFAULT NULL,
  `informations` varchar(1000) DEFAULT NULL,
  `procurement_management` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `objectives` varchar(1000) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_charter`
--

CREATE TABLE `project_charter` (
  `project_charter_id` int(11) NOT NULL,
  `project_description` text DEFAULT NULL,
  `project_purpose` text DEFAULT NULL,
  `project_objective` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `high_level_requirements` text DEFAULT NULL,
  `boundaries` text DEFAULT NULL,
  `high_level_risks` text DEFAULT NULL,
  `summary_schedule` text DEFAULT NULL,
  `budge_summary` text DEFAULT NULL,
  `project_approval_requirements` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `exit_criteria` text DEFAULT NULL,
  `success_criteria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_charter_high_level_requirements`
--

CREATE TABLE `project_charter_high_level_requirements` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_charter_high_level_risks`
--

CREATE TABLE `project_charter_high_level_risks` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_charter_initial_assumptions`
--

CREATE TABLE `project_charter_initial_assumptions` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_charter_initial_restrictions`
--

CREATE TABLE `project_charter_initial_restrictions` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_charter_project_approval_requirements`
--

CREATE TABLE `project_charter_project_approval_requirements` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_charter_stakeholder`
--

CREATE TABLE `project_charter_stakeholder` (
  `stakeholder_id` int(11) NOT NULL,
  `project_charter_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_charter_summary_schedule`
--

CREATE TABLE `project_charter_summary_schedule` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_closure_term`
--

CREATE TABLE `project_closure_term` (
  `project_closure_term_id` int(11) NOT NULL,
  `client` varchar(1000) DEFAULT NULL,
  `project_closure_date` date DEFAULT NULL,
  `main_changes_approved` varchar(1000) DEFAULT NULL,
  `main_deviations` varchar(1000) DEFAULT NULL,
  `main_lessons_learned` varchar(1000) DEFAULT NULL,
  `client_comments` varchar(1000) DEFAULT NULL,
  `sponsor_comments` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_mp`
--

CREATE TABLE `project_mp` (
  `project_mp_id` int(11) NOT NULL,
  `project_lifecycle` text DEFAULT NULL,
  `project_guidelines` text DEFAULT NULL,
  `change_mp` text DEFAULT NULL,
  `configuration_mp` text DEFAULT NULL,
  `baseline_maintenance` text DEFAULT NULL,
  `stakeholders_communication` text DEFAULT NULL,
  `key_review` text DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `requirements_mp` text DEFAULT NULL,
  `schedule_mp` text DEFAULT NULL,
  `cost_mp` text DEFAULT NULL,
  `quality_mp` text DEFAULT NULL,
  `resource_mp` text DEFAULT NULL,
  `risk_mp` text DEFAULT NULL,
  `procurement_mp` text DEFAULT NULL,
  `stakeholder_mp` text DEFAULT NULL,
  `scope_baseline` text DEFAULT NULL,
  `cost_baseline` text DEFAULT NULL,
  `performance` text DEFAULT NULL,
  `development` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_performance_report`
--

CREATE TABLE `project_performance_report` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `current_performance_analysis` varchar(1000) DEFAULT NULL,
  `planned_forecasts` varchar(1000) DEFAULT NULL,
  `forecasts_considering_current_performance` varchar(1000) DEFAULT NULL,
  `current_risk_situation` varchar(1000) DEFAULT NULL,
  `current_status_of_issues` varchar(1000) DEFAULT NULL,
  `work_completed_during_the_period` varchar(1000) DEFAULT NULL,
  `work_to_be_completed_in_the_next_period` varchar(1000) DEFAULT NULL,
  `summary_of_changes` varchar(1000) DEFAULT NULL,
  `earned_value_management` varchar(1000) DEFAULT NULL,
  `other_relevant_information` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_phase`
--

CREATE TABLE `project_phase` (
  `project_phase_id` int(11) NOT NULL,
  `project_phase` text NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_phase_closure`
--

CREATE TABLE `project_phase_closure` (
  `project_phase_closure_id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `responsible` text DEFAULT NULL,
  `deliveries` text DEFAULT NULL,
  `phase_end_date` text DEFAULT NULL,
  `validator` text DEFAULT NULL,
  `project_manager` text DEFAULT NULL,
  `quality_manager` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_user`
--

CREATE TABLE `project_user` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quality_checklist`
--

CREATE TABLE `quality_checklist` (
  `quality_checklist_id` int(11) NOT NULL,
  `verified` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `documents` text DEFAULT NULL,
  `responsible` text DEFAULT NULL,
  `guidelines` text DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quality_checklist_item`
--

CREATE TABLE `quality_checklist_item` (
  `quality_checklist_item_id` int(11) NOT NULL,
  `item_check` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `quality_checklist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quality_mp`
--

CREATE TABLE `quality_mp` (
  `quality_mp_id` int(11) NOT NULL,
  `objectives` text DEFAULT NULL,
  `activities` varchar(1000) DEFAULT NULL,
  `deliverables` text DEFAULT NULL,
  `roles_responsibilities` text DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `standards` text DEFAULT NULL,
  `tools` text DEFAULT NULL,
  `procedures` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quality_reports`
--

CREATE TABLE `quality_reports` (
  `quality_reports_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `type` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `identifier` text DEFAULT NULL,
  `areas` text DEFAULT NULL,
  `deliveries` text DEFAULT NULL,
  `recommendations` text DEFAULT NULL,
  `corrective_actions` text DEFAULT NULL,
  `manager_opinion` text DEFAULT NULL,
  `conclusions` text DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `responsible` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `requirements_mp`
--

CREATE TABLE `requirements_mp` (
  `requirements_mp_id` int(11) NOT NULL,
  `requirements_collection_proc` text DEFAULT NULL,
  `requirements_prioritization` text DEFAULT NULL,
  `product_metrics` text DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `configuration` text DEFAULT NULL,
  `traceability` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `requirement_log`
--

CREATE TABLE `requirement_log` (
  `requirement_log_id` int(11) NOT NULL,
  `creation_date` date DEFAULT NULL,
  `last_change_date` date DEFAULT NULL,
  `last_change_responsible` date DEFAULT NULL,
  `last_change_reason` varchar(1000) DEFAULT NULL,
  `requirement_registration_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `requirement_registration`
--

CREATE TABLE `requirement_registration` (
  `requirement_registration_id` int(11) NOT NULL,
  `associated_id` varchar(1000) DEFAULT NULL,
  `business_strategy` varchar(1000) DEFAULT NULL,
  `requirement_name` varchar(1000) DEFAULT NULL,
  `priority` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `version` varchar(1000) DEFAULT NULL,
  `phase` varchar(1000) DEFAULT NULL,
  `associated_delivery` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `requester` varchar(1000) DEFAULT NULL,
  `complexity` varchar(1000) DEFAULT NULL,
  `acceptance_criteria` varchar(1000) DEFAULT NULL,
  `responsible` varchar(1000) DEFAULT NULL,
  `validity` varchar(1000) DEFAULT NULL,
  `supporting_documentation` varchar(1000) DEFAULT NULL,
  `requirement_situation` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `product_design` text DEFAULT NULL,
  `test_cases` text DEFAULT NULL,
  `requirements_dependency` text DEFAULT NULL,
  `external_dependency` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `risk_checklist`
--

CREATE TABLE `risk_checklist` (
  `risk_checklist_id` int(11) NOT NULL,
  `aspects` text DEFAULT NULL,
  `weight` int(11) DEFAULT 0,
  `level` int(11) DEFAULT 0,
  `project_id` int(11) DEFAULT NULL,
  `score` double DEFAULT 0,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `risk_mp`
--

CREATE TABLE `risk_mp` (
  `risk_mp_id` int(11) NOT NULL,
  `methodology` text DEFAULT NULL,
  `roles_responsibilities` text DEFAULT NULL,
  `risk_management_processes` varchar(1000) DEFAULT NULL,
  `risks_categories` varchar(1000) DEFAULT NULL,
  `risks_probability_impact` varchar(1000) DEFAULT NULL,
  `probability_impact_matrix` varchar(1000) DEFAULT NULL,
  `reviewed_tolerances` text DEFAULT NULL,
  `traceability` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `funding` text DEFAULT NULL,
  `timing` text DEFAULT NULL,
  `stakeholder_risk` text DEFAULT NULL,
  `definitions_risk` text DEFAULT NULL,
  `format_report` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `risk_register`
--

CREATE TABLE `risk_register` (
  `risk_register_id` int(11) NOT NULL,
  `impacted_objective` varchar(1000) DEFAULT NULL,
  `risk_status` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `priority` varchar(1000) DEFAULT NULL,
  `event` varchar(1000) DEFAULT NULL,
  `identifier` varchar(1000) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `probability` text DEFAULT NULL,
  `impact` text DEFAULT NULL,
  `score` text DEFAULT NULL,
  `effects` text DEFAULT NULL,
  `strategy` text DEFAULT NULL,
  `causes` text DEFAULT NULL,
  `triggers` text DEFAULT NULL,
  `responses` text DEFAULT NULL,
  `responses_owner` text DEFAULT NULL,
  `timing` text DEFAULT NULL,
  `residual` text DEFAULT NULL,
  `secondary` text DEFAULT NULL,
  `contingency` text DEFAULT NULL,
  `contingency_owner` text DEFAULT NULL,
  `fallback` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `lessons` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `schedule_mp`
--

CREATE TABLE `schedule_mp` (
  `schedule_mp_id` int(11) NOT NULL,
  `schedule_model` varchar(1000) DEFAULT NULL,
  `accuracy_level` varchar(1000) DEFAULT NULL,
  `organizational_procedures` varchar(1000) DEFAULT NULL,
  `schedule_maintenance` varchar(1000) DEFAULT NULL,
  `performance_measurement` text DEFAULT NULL,
  `report_format` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `control_thresholds` text DEFAULT NULL,
  `units_measure` text DEFAULT NULL,
  `release_iteration` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `scope_mp`
--

CREATE TABLE `scope_mp` (
  `scope_mp_id` int(11) NOT NULL,
  `scope_specification` text DEFAULT NULL,
  `eap_process` text DEFAULT NULL,
  `deliveries_acceptance` text DEFAULT NULL,
  `scope_change_mp` text DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `baseline` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `scope_specification`
--

CREATE TABLE `scope_specification` (
  `scope_specification_id` int(11) NOT NULL,
  `scope_description` varchar(1000) DEFAULT NULL,
  `acceptance_criteria` varchar(1000) DEFAULT NULL,
  `deliveries` varchar(1000) DEFAULT NULL,
  `exclusions` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `signature`
--

CREATE TABLE `signature` (
  `signature_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `view_id` int(11) NOT NULL,
  `access_level` int(11) NOT NULL,
  `date` text CHARACTER SET latin1 NOT NULL,
  `time` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `stakeholder`
--

CREATE TABLE `stakeholder` (
  `stakeholder_id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `organization` varchar(1000) DEFAULT NULL,
  `position` varchar(1000) DEFAULT NULL,
  `role` varchar(1000) DEFAULT NULL,
  `responsibility` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `phone_number` varchar(1000) DEFAULT NULL,
  `work_place` varchar(1000) DEFAULT NULL,
  `essential_requirements` text DEFAULT NULL,
  `main_expectations` text DEFAULT NULL,
  `interest_phase` text DEFAULT NULL,
  `observations` text DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `interest` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `influence` int(11) DEFAULT NULL,
  `impact` int(11) DEFAULT NULL,
  `average` int(11) DEFAULT NULL,
  `expected_engagement` varchar(50) DEFAULT NULL,
  `current_engagement` varchar(50) DEFAULT NULL,
  `strategy` text DEFAULT NULL,
  `scope` text DEFAULT NULL,
  `observation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `stakeholder_mp`
--

CREATE TABLE `stakeholder_mp` (
  `stakeholder_mp_id` int(11) NOT NULL,
  `stakeholder_id` int(11) NOT NULL,
  `interest` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `influence` int(11) DEFAULT NULL,
  `impact` int(11) DEFAULT NULL,
  `average` int(11) DEFAULT NULL,
  `expected_engagement` varchar(1000) DEFAULT NULL,
  `current_engagement` varchar(1000) DEFAULT NULL,
  `strategy` text DEFAULT NULL,
  `scope` text DEFAULT NULL,
  `observation` text DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `team_performance_evaluation`
--

CREATE TABLE `team_performance_evaluation` (
  `team_performance_evaluation_id` int(11) NOT NULL,
  `team_member_name` varchar(1000) DEFAULT NULL,
  `role` varchar(1000) DEFAULT NULL,
  `project_function` varchar(1000) DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `team_member_comments` varchar(1000) DEFAULT NULL,
  `strong_points` varchar(1000) DEFAULT NULL,
  `improvement` varchar(1000) DEFAULT NULL,
  `development_plan` varchar(1000) DEFAULT NULL,
  `already_developed` varchar(1000) DEFAULT NULL,
  `external_comments` varchar(1000) DEFAULT NULL,
  `team_mates_comments` varchar(1000) DEFAULT NULL,
  `team_performance_evaluationcol` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `path` text DEFAULT NULL,
  `view` text DEFAULT NULL,
  `alt` text DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `institution` varchar(1000) DEFAULT NULL,
  `lattes_address` varchar(1000) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `view`
--

CREATE TABLE `view` (
  `view_id` int(11) NOT NULL,
  `view_name` varchar(55) DEFAULT NULL,
  `view_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `work_performance_report`
--

CREATE TABLE `work_performance_report` (
  `work_performance_report_id` int(11) NOT NULL,
  `responsible` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `main_activities` varchar(1000) DEFAULT NULL,
  `next_activities` varchar(1000) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `issues` varchar(1000) DEFAULT NULL,
  `changes` varchar(1000) DEFAULT NULL,
  `risks` varchar(1000) DEFAULT NULL,
  `attention_points` varchar(1000) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `anexo`
--
ALTER TABLE `anexo`
  ADD PRIMARY KEY (`anexo_id`);

--
-- Índices para tabela `assumption_log`
--
ALTER TABLE `assumption_log`
  ADD PRIMARY KEY (`assumption_log_id`);

--
-- Índices para tabela `benefits_plan`
--
ALTER TABLE `benefits_plan`
  ADD PRIMARY KEY (`benefits_plan_id`);

--
-- Índices para tabela `business_case`
--
ALTER TABLE `business_case`
  ADD PRIMARY KEY (`business_case_id`);

--
-- Índices para tabela `change_log`
--
ALTER TABLE `change_log`
  ADD PRIMARY KEY (`change_log_id`);

--
-- Índices para tabela `change_request`
--
ALTER TABLE `change_request`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `closed_procurement_documentation`
--
ALTER TABLE `closed_procurement_documentation`
  ADD PRIMARY KEY (`closed_procurement_documentation_id`);

--
-- Índices para tabela `communication_item`
--
ALTER TABLE `communication_item`
  ADD PRIMARY KEY (`communication_item_id`);

--
-- Índices para tabela `communication_responsability`
--
ALTER TABLE `communication_responsability`
  ADD PRIMARY KEY (`communication_responsability_id`);

--
-- Índices para tabela `communication_stakeholder_responsability`
--
ALTER TABLE `communication_stakeholder_responsability`
  ADD PRIMARY KEY (`communication_item_responsability_id`);

--
-- Índices para tabela `cost_mp`
--
ALTER TABLE `cost_mp`
  ADD PRIMARY KEY (`cost_mp_id`);

--
-- Índices para tabela `delivery_acceptance_term`
--
ALTER TABLE `delivery_acceptance_term`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `duration_estimates`
--
ALTER TABLE `duration_estimates`
  ADD PRIMARY KEY (`duration_estimates_id`);

--
-- Índices para tabela `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`field_id`);

--
-- Índices para tabela `final_report`
--
ALTER TABLE `final_report`
  ADD PRIMARY KEY (`final_report_id`);

--
-- Índices para tabela `human_resources_mp`
--
ALTER TABLE `human_resources_mp`
  ADD PRIMARY KEY (`human_resources_mp_id`);

--
-- Índices para tabela `issues_record`
--
ALTER TABLE `issues_record`
  ADD PRIMARY KEY (`issues_record_id`);

--
-- Índices para tabela `items_check`
--
ALTER TABLE `items_check`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `knowledge_area`
--
ALTER TABLE `knowledge_area`
  ADD PRIMARY KEY (`knowledge_area_id`);

--
-- Índices para tabela `lesson_learned_register`
--
ALTER TABLE `lesson_learned_register`
  ADD PRIMARY KEY (`lesson_learned_register_id`);

--
-- Índices para tabela `log_activity`
--
ALTER TABLE `log_activity`
  ADD PRIMARY KEY (`log_activity_id`);

--
-- Índices para tabela `log_notification`
--
ALTER TABLE `log_notification`
  ADD PRIMARY KEY (`project_id`);

--
-- Índices para tabela `milestone`
--
ALTER TABLE `milestone`
  ADD PRIMARY KEY (`milestone_id`);

--
-- Índices para tabela `notification_board`
--
ALTER TABLE `notification_board`
  ADD PRIMARY KEY (`notification_board_id`);

--
-- Índices para tabela `process_improvement_plan`
--
ALTER TABLE `process_improvement_plan`
  ADD PRIMARY KEY (`process_improvement_plan_id`);

--
-- Índices para tabela `procurement_mp`
--
ALTER TABLE `procurement_mp`
  ADD PRIMARY KEY (`procurement_mp_id`);

--
-- Índices para tabela `procurement_statement_of_work`
--
ALTER TABLE `procurement_statement_of_work`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Índices para tabela `project_charter`
--
ALTER TABLE `project_charter`
  ADD PRIMARY KEY (`project_charter_id`);

--
-- Índices para tabela `project_charter_high_level_requirements`
--
ALTER TABLE `project_charter_high_level_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `project_charter_high_level_risks`
--
ALTER TABLE `project_charter_high_level_risks`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `project_charter_initial_assumptions`
--
ALTER TABLE `project_charter_initial_assumptions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `project_charter_initial_restrictions`
--
ALTER TABLE `project_charter_initial_restrictions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `project_charter_project_approval_requirements`
--
ALTER TABLE `project_charter_project_approval_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `project_charter_stakeholder`
--
ALTER TABLE `project_charter_stakeholder`
  ADD PRIMARY KEY (`stakeholder_id`,`project_charter_id`);

--
-- Índices para tabela `project_charter_summary_schedule`
--
ALTER TABLE `project_charter_summary_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `project_closure_term`
--
ALTER TABLE `project_closure_term`
  ADD PRIMARY KEY (`project_closure_term_id`);

--
-- Índices para tabela `project_mp`
--
ALTER TABLE `project_mp`
  ADD PRIMARY KEY (`project_mp_id`);

--
-- Índices para tabela `project_performance_report`
--
ALTER TABLE `project_performance_report`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `project_phase`
--
ALTER TABLE `project_phase`
  ADD PRIMARY KEY (`project_phase_id`);

--
-- Índices para tabela `project_phase_closure`
--
ALTER TABLE `project_phase_closure`
  ADD PRIMARY KEY (`project_phase_closure_id`);

--
-- Índices para tabela `quality_checklist`
--
ALTER TABLE `quality_checklist`
  ADD PRIMARY KEY (`quality_checklist_id`);

--
-- Índices para tabela `quality_checklist_item`
--
ALTER TABLE `quality_checklist_item`
  ADD PRIMARY KEY (`quality_checklist_item_id`);

--
-- Índices para tabela `quality_mp`
--
ALTER TABLE `quality_mp`
  ADD PRIMARY KEY (`quality_mp_id`);

--
-- Índices para tabela `quality_reports`
--
ALTER TABLE `quality_reports`
  ADD PRIMARY KEY (`quality_reports_id`);

--
-- Índices para tabela `requirements_mp`
--
ALTER TABLE `requirements_mp`
  ADD PRIMARY KEY (`requirements_mp_id`);

--
-- Índices para tabela `requirement_log`
--
ALTER TABLE `requirement_log`
  ADD PRIMARY KEY (`requirement_log_id`);

--
-- Índices para tabela `requirement_registration`
--
ALTER TABLE `requirement_registration`
  ADD PRIMARY KEY (`requirement_registration_id`);

--
-- Índices para tabela `risk_checklist`
--
ALTER TABLE `risk_checklist`
  ADD PRIMARY KEY (`risk_checklist_id`);

--
-- Índices para tabela `risk_mp`
--
ALTER TABLE `risk_mp`
  ADD PRIMARY KEY (`risk_mp_id`);

--
-- Índices para tabela `risk_register`
--
ALTER TABLE `risk_register`
  ADD PRIMARY KEY (`risk_register_id`);

--
-- Índices para tabela `schedule_mp`
--
ALTER TABLE `schedule_mp`
  ADD PRIMARY KEY (`schedule_mp_id`);

--
-- Índices para tabela `scope_mp`
--
ALTER TABLE `scope_mp`
  ADD PRIMARY KEY (`scope_mp_id`);

--
-- Índices para tabela `scope_specification`
--
ALTER TABLE `scope_specification`
  ADD PRIMARY KEY (`scope_specification_id`);

--
-- Índices para tabela `signature`
--
ALTER TABLE `signature`
  ADD PRIMARY KEY (`signature_id`);

--
-- Índices para tabela `stakeholder`
--
ALTER TABLE `stakeholder`
  ADD PRIMARY KEY (`stakeholder_id`);

--
-- Índices para tabela `stakeholder_mp`
--
ALTER TABLE `stakeholder_mp`
  ADD PRIMARY KEY (`stakeholder_mp_id`);

--
-- Índices para tabela `team_performance_evaluation`
--
ALTER TABLE `team_performance_evaluation`
  ADD PRIMARY KEY (`team_performance_evaluation_id`);

--
-- Índices para tabela `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices para tabela `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`view_id`),
  ADD UNIQUE KEY `view_name` (`view_name`);

--
-- Índices para tabela `work_performance_report`
--
ALTER TABLE `work_performance_report`
  ADD PRIMARY KEY (`work_performance_report_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `anexo`
--
ALTER TABLE `anexo`
  MODIFY `anexo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `assumption_log`
--
ALTER TABLE `assumption_log`
  MODIFY `assumption_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `benefits_plan`
--
ALTER TABLE `benefits_plan`
  MODIFY `benefits_plan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `business_case`
--
ALTER TABLE `business_case`
  MODIFY `business_case_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `change_log`
--
ALTER TABLE `change_log`
  MODIFY `change_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `change_request`
--
ALTER TABLE `change_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `closed_procurement_documentation`
--
ALTER TABLE `closed_procurement_documentation`
  MODIFY `closed_procurement_documentation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `communication_item`
--
ALTER TABLE `communication_item`
  MODIFY `communication_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `communication_responsability`
--
ALTER TABLE `communication_responsability`
  MODIFY `communication_responsability_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `communication_stakeholder_responsability`
--
ALTER TABLE `communication_stakeholder_responsability`
  MODIFY `communication_item_responsability_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cost_mp`
--
ALTER TABLE `cost_mp`
  MODIFY `cost_mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `delivery_acceptance_term`
--
ALTER TABLE `delivery_acceptance_term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `duration_estimates`
--
ALTER TABLE `duration_estimates`
  MODIFY `duration_estimates_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `final_report`
--
ALTER TABLE `final_report`
  MODIFY `final_report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `human_resources_mp`
--
ALTER TABLE `human_resources_mp`
  MODIFY `human_resources_mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `issues_record`
--
ALTER TABLE `issues_record`
  MODIFY `issues_record_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `items_check`
--
ALTER TABLE `items_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `knowledge_area`
--
ALTER TABLE `knowledge_area`
  MODIFY `knowledge_area_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lesson_learned_register`
--
ALTER TABLE `lesson_learned_register`
  MODIFY `lesson_learned_register_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `log_activity`
--
ALTER TABLE `log_activity`
  MODIFY `log_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `log_notification`
--
ALTER TABLE `log_notification`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `milestone`
--
ALTER TABLE `milestone`
  MODIFY `milestone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notification_board`
--
ALTER TABLE `notification_board`
  MODIFY `notification_board_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `process_improvement_plan`
--
ALTER TABLE `process_improvement_plan`
  MODIFY `process_improvement_plan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `procurement_mp`
--
ALTER TABLE `procurement_mp`
  MODIFY `procurement_mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `procurement_statement_of_work`
--
ALTER TABLE `procurement_statement_of_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_charter`
--
ALTER TABLE `project_charter`
  MODIFY `project_charter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_charter_high_level_requirements`
--
ALTER TABLE `project_charter_high_level_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_charter_high_level_risks`
--
ALTER TABLE `project_charter_high_level_risks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_charter_initial_assumptions`
--
ALTER TABLE `project_charter_initial_assumptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_charter_initial_restrictions`
--
ALTER TABLE `project_charter_initial_restrictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_charter_project_approval_requirements`
--
ALTER TABLE `project_charter_project_approval_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_charter_summary_schedule`
--
ALTER TABLE `project_charter_summary_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_closure_term`
--
ALTER TABLE `project_closure_term`
  MODIFY `project_closure_term_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_mp`
--
ALTER TABLE `project_mp`
  MODIFY `project_mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_performance_report`
--
ALTER TABLE `project_performance_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_phase`
--
ALTER TABLE `project_phase`
  MODIFY `project_phase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `project_phase_closure`
--
ALTER TABLE `project_phase_closure`
  MODIFY `project_phase_closure_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quality_checklist`
--
ALTER TABLE `quality_checklist`
  MODIFY `quality_checklist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quality_checklist_item`
--
ALTER TABLE `quality_checklist_item`
  MODIFY `quality_checklist_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quality_mp`
--
ALTER TABLE `quality_mp`
  MODIFY `quality_mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quality_reports`
--
ALTER TABLE `quality_reports`
  MODIFY `quality_reports_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `requirements_mp`
--
ALTER TABLE `requirements_mp`
  MODIFY `requirements_mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `requirement_log`
--
ALTER TABLE `requirement_log`
  MODIFY `requirement_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `requirement_registration`
--
ALTER TABLE `requirement_registration`
  MODIFY `requirement_registration_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `risk_checklist`
--
ALTER TABLE `risk_checklist`
  MODIFY `risk_checklist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `risk_mp`
--
ALTER TABLE `risk_mp`
  MODIFY `risk_mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `risk_register`
--
ALTER TABLE `risk_register`
  MODIFY `risk_register_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `schedule_mp`
--
ALTER TABLE `schedule_mp`
  MODIFY `schedule_mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `scope_mp`
--
ALTER TABLE `scope_mp`
  MODIFY `scope_mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `scope_specification`
--
ALTER TABLE `scope_specification`
  MODIFY `scope_specification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `signature`
--
ALTER TABLE `signature`
  MODIFY `signature_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `stakeholder`
--
ALTER TABLE `stakeholder`
  MODIFY `stakeholder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `stakeholder_mp`
--
ALTER TABLE `stakeholder_mp`
  MODIFY `stakeholder_mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `team_performance_evaluation`
--
ALTER TABLE `team_performance_evaluation`
  MODIFY `team_performance_evaluation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `view`
--
ALTER TABLE `view`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `work_performance_report`
--
ALTER TABLE `work_performance_report`
  MODIFY `work_performance_report_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
